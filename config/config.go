package config

import (
	"log"
	"os"

	"github.com/joho/godotenv"
)

// Config struct contient les configurations du bot discord
type Config struct {
	Token string
}

// New retourne une instance de Config

func New() *Config {
	// Charge les variables d'environnement à partir du fichier .env
	err := godotenv.Load()
	if err != nil {
		log.Fatal("Error loading .env file")
	}

	token := os.Getenv("DISCORD_BOT_TOKEN")
	if token == "" {
		log.Fatal("DISCORD_BOT_TOKEN is not set")
	}
	return &Config{
		Token: token,
	}
}
