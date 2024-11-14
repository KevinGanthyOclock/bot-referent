module.exports = {
    aggregatePrompts: (promo) => {
        const prompt_promo = $app.dao().findFirstRecordByData("contexts", "title", promo)
        if (!prompt_promo) {
            throw new ApiError("No prompt found for promo: " + promo)
        }

        const result = getRecursivePrompts(prompt_promo.get('id'), [])
        return result.reverse().join("\n---\n")
    },

    askToAi: (prompt, question) => {
        return prompt + "\n\n**Question :**" + question
    },

    sendToDiscord: (discord_ref, response) => {
        return "Message envoyé à " + discord_ref + " : " + response
    }
}

const getRecursivePrompts = (prompt_id, result) => {
    const prompt = $app.dao().findRecordById("contexts", prompt_id)
    if (!prompt) {
        throw new ApiError("No prompt found for id: " + prompt_id)
    }
    result = [...result, prompt.getString('content')]

    const parents = prompt.get('parents')
    parents.forEach(parent => {
        result = getRecursivePrompts(parent, result)
    })

    return result;
}