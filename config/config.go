package config

import (
    "log"
    "os"

    "github.com/joho/godotenv"
)

type Config struct {
    Token string
    OpenAIToken string
}

func New() *Config {
    err := godotenv.Load()
    if err != nil {
        log.Fatal("Error loading .env file")
    }

    token := os.Getenv("DISCORD_BOT_TOKEN")
    if token == "" {
        log.Fatal("DISCORD_BOT_TOKEN is not set")
    }

    openaiToken := os.Getenv("OPENAI_API_KEY")
    if openaiToken == "" {
        log.Fatal("OPENAI_API_KEY is not set")
    }

    return &Config{
        Token: token,
        OpenAIToken: openaiToken,
    }
}