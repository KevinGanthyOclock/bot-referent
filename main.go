package main

import (
	"log"
	"os"
	"os/signal"
	"syscall"

	"bot-referent/bot"
	"bot-referent/config"
)

func main() {
	cfg := config.New()

	discordBot, err := bot.New(cfg.Token)
	if err != nil {
		log.Fatalf("erreur lors de la création du bot : %v", err)
	}

	err = discordBot.Start()
	if err != nil {
		log.Fatalf("erreur lors du démarrage du bot : %v", err)
	}

	// Attendre le signal d'interruption (Ctrl+C) pour une fermeture propre
	sc := make(chan os.Signal, 1)
	signal.Notify(sc, syscall.SIGINT, syscall.SIGTERM, os.Interrupt)
	<-sc

	// Fermeture propre
	discordBot.Session.Close()
}
