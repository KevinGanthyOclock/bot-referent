package bot

import (
	"context"
	"fmt"
	"io/ioutil"
	"log"
	"path/filepath"
	"strings"

	"github.com/bwmarrin/discordgo"
	"github.com/sashabaranov/go-openai"
)

type Bot struct {
	Session      *discordgo.Session
	OpenAI       *openai.Client
	Contexts     map[string]string
	SystemPrompt string
}

func New(token string, openaiToken string) (*Bot, error) {
	session, err := discordgo.New("Bot " + token)
	if err != nil {
		return nil, err
	}

	// Initialiser le client OpenAI
	client := openai.NewClient(openaiToken)

	bot := &Bot{
		Session:      session,
		OpenAI:       client,
		Contexts:     make(map[string]string),
		SystemPrompt: "Tu es un assistant spécialisé dans les formations O'clock. Utilise les contextes fournis pour répondre aux questions.",
	}

	// Charger les fichiers de contexte
	files, err := filepath.Glob("contexts/*.md")
	if err != nil {
		return nil, fmt.Errorf("erreur chargement contextes: %w", err)
	}

	for _, file := range files {
		content, err := ioutil.ReadFile(file)
		if err != nil {
			return nil, fmt.Errorf("erreur lecture %s: %w", file, err)
		}
		name := strings.TrimSuffix(filepath.Base(file), ".md")
		bot.Contexts[name] = string(content)
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

		if question == "" {
			s.ChannelMessageSend(m.ChannelID, "Veuillez poser une question après !question")
			return
		}

		// Construire le prompt avec tous les contextes
		var fullContext string
		for name, content := range b.Contexts {
			fullContext += fmt.Sprintf("Contexte %s:\n%s\n\n", name, content)
		}

		// Créer le message pour ChatGPT
		messages := []openai.ChatCompletionMessage{
			{
				Role:    "system",
				Content: b.SystemPrompt,
			},
			{
				Role:    "user",
				Content: fullContext + "\nQuestion: " + question,
			},
		}

		// Appeler l'API OpenAI
		resp, err := b.OpenAI.CreateChatCompletion(
			context.Background(),
			openai.ChatCompletionRequest{
				Model:    openai.GPT4oMini,
				Messages: messages,
			},
		)

		if err != nil {
			log.Printf("Erreur OpenAI: %v\n", err)
			s.ChannelMessageSend(m.ChannelID, "Désolé, une erreur est survenue.")
			return
		}

		// Envoyer la réponse
		s.ChannelMessageSend(m.ChannelID, resp.Choices[0].Message.Content)
	}

	// Liste des formations disponibles
	if m.Content == "!formations" {
		var formations []string
		for name := range b.Contexts {
			formations = append(formations, name)
		}
		response := fmt.Sprintf("**Formations disponibles :** %s", strings.Join(formations, ", "))
		s.ChannelMessageSend(m.ChannelID, response)
		return
	}

	// Afficher les informations d'une formation
	if strings.HasPrefix(m.Content, "!formation ") {
		formationName := strings.TrimPrefix(m.Content, "!formation ")
		formationName = strings.TrimSpace(formationName)

		if context, ok := b.Contexts[formationName]; ok {
			s.ChannelMessageSend(m.ChannelID, context)
		} else {
			s.ChannelMessageSend(m.ChannelID, "Formation non trouvée. Utilisez !formations pour voir la liste.")
		}
	}
}
