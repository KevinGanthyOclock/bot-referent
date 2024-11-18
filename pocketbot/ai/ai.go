package ai

import (
    "strings"
    "bytes"
    "encoding/json"
    "io"
    "net/http"

	"github.com/pocketbase/pocketbase"
	"github.com/pocketbase/pocketbase/apis"
)

type Message struct {
    Role    string `json:"role"`
    Content string `json:"content"`
}

type ChatGPTRequest struct {
    Model    string    `json:"model"`
    Messages []Message `json:"messages"`
}

type ChatGPTResponse struct {
    Choices []struct {
        Message struct {
            Content string `json:"content"`
        } `json:"message"`
    } `json:"choices"`
}


func GetChatGPTResponse(apiKey, prompt string) (string, error) {
    url := "https://api.openai.com/v1/chat/completions"

    // Création de la requête JSON
    requestBody := ChatGPTRequest{
        Model: "gpt-3.5-turbo",
        Messages: []Message{{Role: "user", Content: prompt}},
    }

    jsonData, err := json.Marshal(requestBody)
    if err != nil {
        return "", err
    }

    // Création de la requête HTTP
    req, err := http.NewRequest("POST", url, bytes.NewBuffer(jsonData))
    if err != nil {
        return "", err
    }

    req.Header.Set("Content-Type", "application/json")
    req.Header.Set("Authorization", "Bearer "+apiKey)

    // Envoi de la requête
    client := &http.Client{}
    resp, err := client.Do(req)
    if err != nil {
        return "", err
    }
    defer resp.Body.Close()

    if resp.StatusCode != http.StatusOK {
        return "", err
    }

    // Lecture de la réponse
    body, err := io.ReadAll(resp.Body)
    if err != nil {
        return "", err
    }

    var chatResponse ChatGPTResponse
    err = json.Unmarshal(body, &chatResponse)
    if err != nil {
        return "", err
    }

    return chatResponse.Choices[0].Message.Content, nil
}


func GetContexts(app *pocketbase.PocketBase, roles []string) (string, error) {
    contexts := []string{}

    var contextId string
    for _, role := range roles {
        contextId = getPromoContextId(app, role)
        if contextId != "" {
            break
        }
    }
    
    if contextId == "" {
        return "", apis.NewApiError(404, "Context not found", nil)
    }

    contexts, err := getRecursiveContexts(app, contextId, contexts)
    if err != nil {
        return "", err
    }

    return strings.Join(contexts, "<br><br>"), nil
}



func getPromoContextId(app *pocketbase.PocketBase, promo string) string {
    context, _ := app.Dao().FindFirstRecordByData("contexts", "title", promo)
    if context == nil {
        return ""
    }
    return context.Get("id").(string)
}

func getRecursiveContexts(app *pocketbase.PocketBase, contextId string, contexts []string) ([]string, error) {
    context, err := app.Dao().FindRecordById("contexts", contextId)
    if err != nil {
        return nil, err
    }
    contexts = append(contexts, context.Get("content").(string))

    if context.Get("parents") == nil {
        return contexts, nil
    }
    for _, parent := range context.Get("parents").([]string) {
        contexts, err = getRecursiveContexts(app, parent, contexts)
        if err != nil {
            return nil, err
        }
    }

    return contexts, nil
}