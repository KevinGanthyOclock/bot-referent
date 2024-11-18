package main

import (
	"log"
	"net/http"
	"os"

	"github.com/labstack/echo/v5"

	"github.com/pocketbase/pocketbase"
	"github.com/pocketbase/pocketbase/apis"
	"github.com/pocketbase/pocketbase/core"
	"github.com/pocketbase/pocketbase/tools/types"
	// "github.com/pocketbase/pocketbase/plugins/jsvm"

	"pocketbot/ai"
	"pocketbot/bot"
	"pocketbot/database"
)

func main() {
	// Extract environment variables
	OPENAI_API_KEY := os.Getenv("OPENAI_API_KEY")
	if OPENAI_API_KEY == "" {
		log.Fatal("OPENAI_API_KEY is not set")
	}
	DISCORD_BOT_TOKEN := os.Getenv("DISCORD_BOT_TOKEN")
	if DISCORD_BOT_TOKEN == "" {
		log.Fatal("DISCORD_BOT_TOKEN is not set")
	}

	// Create PocketBase
	app := pocketbase.New()

	// Activate js hooks
	// jsvm.MustRegister(app, jsvm.Config{
	// 	HooksWatch:    true,
	// 	HooksPoolSize: 25,
	// })


	// serves static files from the provided public dir (if exists)
	app.OnBeforeServe().Add(func(e *core.ServeEvent) error {
		e.Router.GET("/*", apis.StaticDirectoryHandler(os.DirFS("./pb_public"), false))
		return nil
	})

	// Start the discord bot
	discordBot, err := bot.New(app, DISCORD_BOT_TOKEN)
	if err != nil {
		log.Fatalf("erreur lors de la création du bot : %v", err)
	}
	app.OnBeforeServe().Add(func(e *core.ServeEvent) error {
		err = discordBot.Start()
		if err != nil {
			log.Fatalf("erreur lors du démarrage du bot : %v", err)
		}
		return nil
	})

	// Implements init database
	app.OnAfterBootstrap().Add(func(e *core.BootstrapEvent) error {
		db := database.New(app)
		err := db.Seed()
		if err != nil {
			log.Fatalf("Error during database seeding: %v", err)
		}	
        return nil
    })
	
	// Create routes to interact with the bot and openai
	app.OnBeforeServe().Add(func(e *core.ServeEvent) error {
		e.Router.GET("/api/generateResponse/:message_id", func(c echo.Context) error {
			message_id := c.PathParam("message_id")
			if message_id == "" {
				return apis.NewBadRequestError("message_id is required", nil)
			}

			message, err := app.Dao().FindRecordById("messages", message_id)
			if err != nil {
				return apis.NewNotFoundError("message not found", err)
			}

			question, ok := message.Get("question").(string)
			if !ok {
				return apis.NewBadRequestError("question must be a string", nil)
			}

			// TODO : get contexts from database
			contexts := ""

			prompt := contexts + "\n---\n" + question
			response, err := ai.GetChatGPTResponse(OPENAI_API_KEY, prompt)
			if err != nil {
				return apis.NewApiError(500, "something went wrong", err)
			}

			message.Set("response", response)
			if err := app.Dao().SaveRecord(message); err != nil {
				return err
			}

			return c.JSON(http.StatusOK, message)
		}, apis.RequireAdminAuth())

		e.Router.GET("/api/sendResponse/:message_id", func(c echo.Context) error {
			message_id := c.PathParam("message_id")
			if message_id == "" {
				return apis.NewBadRequestError("message_id is required", nil)
			}

			message, err := app.Dao().FindRecordById("messages", message_id)
			if err != nil {
				return apis.NewNotFoundError("message not found", err)
			}

			response, ok := message.Get("response").(string)
			if !ok {
				return apis.NewBadRequestError("response must be a string", nil)
			}

			err = discordBot.SendResponse(response, message.Get("metadata").(types.JsonRaw))
			if err != nil {
				return apis.NewApiError(500, "something went wrong", err)
			}

			message.Set("response_sent", true)
			if err := app.Dao().SaveRecord(message); err != nil {
				return err
			}

			return c.JSON(http.StatusOK, "Envoyée")
		}, apis.RequireAdminAuth())

		return nil
	})


	// Start the app
	if err := app.Start(); err != nil {
		log.Fatal(err)
	}
}
