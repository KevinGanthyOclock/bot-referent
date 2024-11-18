// Remplacez par votre clé API OpenAI
package ai

import (
    "bytes"
    "encoding/json"
    "io"
    "net/http"
)

// Structure pour représenter les messages envoyés à l'API
type Message struct {
    Role    string `json:"role"`
    Content string `json:"content"`
}

// Structure pour représenter la requête envoyée à l'API
type ChatGPTRequest struct {
    Model    string    `json:"model"`
    Messages []Message `json:"messages"`
}

// Structure pour représenter la réponse de l'API
type ChatGPTResponse struct {
    Choices []struct {
        Message struct {
            Content string `json:"content"`
        } `json:"message"`
    } `json:"choices"`
}


// GetChatGPTResponse envoie un prompt à l'API OpenAI et retourne la réponse
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
