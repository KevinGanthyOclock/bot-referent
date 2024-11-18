package bot

import (
	"fmt"
	"log"
	"strings"
	"encoding/json"

	"github.com/bwmarrin/discordgo"
	"github.com/pocketbase/pocketbase"
	"github.com/pocketbase/pocketbase/models"
	"github.com/pocketbase/pocketbase/tools/types"
)

type Bot struct {
	Session    *discordgo.Session
	Pocketbase *pocketbase.PocketBase
}

func New(app *pocketbase.PocketBase, token string) (*Bot, error) {
	session, err := discordgo.New("Bot " + token)
	if err != nil {
		return nil, err
	}

	bot := &Bot{
		Session:    session,
		Pocketbase: app,
	}
	return bot, nil
}

func (b *Bot) Start() error {
	b.Session.AddHandler(b.messageCreate)
	err := b.Session.Open()
	if err != nil {
		return fmt.Errorf("erreur ouverture session: %w", err)
	}
	return nil
}

func (b *Bot) messageCreate(s *discordgo.Session, m *discordgo.MessageCreate) {
	if m.Author.ID == s.State.User.ID {
		return
	}

	if strings.HasPrefix(m.Content, "!question") {
		question := strings.TrimPrefix(m.Content, "!question")
		question = strings.TrimSpace(question)

		collection, err := b.Pocketbase.Dao().FindCollectionByNameOrId("messages")
		if err != nil {
			return
		}

		record := models.NewRecord(collection)
		record.Set("question", question)
		record.Set("metadata", m)
		record.Set("roles", getUserRoles(s, m))

		if err := b.Pocketbase.Dao().SaveRecord(record); err != nil {
			return
		}

		s.ChannelMessageSendReply(m.ChannelID, "Salut, j'ai bien reçu ta question, on s'en charge très vite !", m.Reference())
	}
}

func (b *Bot) SendResponse(response string, metadata types.JsonRaw) error {
	var meta map[string]interface{}
	if err := json.Unmarshal(metadata, &meta); err != nil {
		return fmt.Errorf("erreur lors de l'analyse des métadonnées : %w", err)
	}

	channelID, ok := meta["channel_id"].(string)
	if !ok {
		return fmt.Errorf("channel_id non trouvé dans les métadonnées")
	}
	
	messageID, ok := meta["id"].(string)
	if !ok {
		return fmt.Errorf("message id non trouvé dans les métadonnées")
	}

	m, err := b.Session.ChannelMessage(channelID, messageID)
	if err != nil {
		return fmt.Errorf("erreur lors de la récupération du message : %w", err)
	}	

	_, err = b.Session.ChannelMessageSendReply(channelID, response, m.Reference())
	if err != nil {
		log.Println("Erreur lors de l'envoi de la réponse :", err)
	}

	return nil
}

func getUserRoles(s *discordgo.Session, m *discordgo.MessageCreate) []string {
	member, err := s.GuildMember(m.GuildID, m.Author.ID)
	if err != nil {
		fmt.Println("Erreur lors de la récupération du membre :", err)
		return nil
	}

	// Récupérer les rôles du membre
	roles := member.Roles
	guildRoles, err := s.GuildRoles(m.GuildID)
	if err != nil {
		fmt.Println("Erreur lors de la récupération des rôles du serveur :", err)
		return nil
	}

	// Mapper les IDs des rôles aux noms des rôles
	var roleNames []string
	for _, roleID := range roles {
		for _, role := range guildRoles {
			if role.ID == roleID {
				roleNames = append(roleNames, role.Name)
				break
			}
		}
	}

	return roleNames
}
