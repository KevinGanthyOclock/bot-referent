package bot

import (
	"fmt"
	"log"
	"strings"

	"github.com/bwmarrin/discordgo"
)

// Bot struct rdprésente le bot discord
type Bot struct {
	Session *discordgo.Session
}

// New retourne une instance de Bot
func New(token string) (*Bot, error) {
	session, err := discordgo.New("Bot " + token)
	if err != nil {
		return nil, err
	}
	return &Bot{
		Session: session,
	}, nil
}

// Start démarre le bot (méthode de Bot)
func (b *Bot) Start() error {
	b.Session.AddHandler(b.messageCreate)

	err := b.Session.Open()
	if err != nil {
		return fmt.Errorf("erreur lors de l'ouverture de la connexion : %w", err)
	}

	log.Println("Bot est maintenant en cours d'exécution. Appuyez sur CTRL-C pour quitter.")
	return nil
}

// messageCreate est un gestionnaire d'événements qui sera appelé chaque fois que le bot reçoit un message (méthode de Bot)
func (b *Bot) messageCreate(s *discordgo.Session, m *discordgo.MessageCreate) {
	// Ignore les messages du bot lui-même
	if m.Author.ID == s.State.User.ID {
		return
	}

	// Vérifie si le message commence par "!question"
	if strings.HasPrefix(m.Content, "!question") {
		question := strings.TrimPrefix(m.Content, "!question")
		question = strings.TrimSpace(question)

		if question == "" {
			s.ChannelMessageSend(m.ChannelID, "Veuillez poser une question après !question")
			return
		}

		// Ici, vous pouvez traiter la question comme vous le souhaitez
		response := fmt.Sprintf("J'ai reçu votre question : %s", question)
		s.ChannelMessageSend(m.ChannelID, response)
	}
}
