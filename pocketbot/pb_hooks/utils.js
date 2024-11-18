module.exports = {
    aggregatePrompts: (roles) => {
        let context_promo = getPromoContext(roles);
        if (!context_promo) {
            throw new ApiError("No context found for promo : " + roles.join(', '))
        }

        const result = getRecursiveContexts(context_promo.get('id'), [])
        return result.reverse().join("\n---\n")
    },

   

    sendToDiscord: (discord_ref, response) => {
        // TODO : SEND TO DISCORD

        return "Message envoyé à " + discord_ref + " : " + response
    }
}

const getPromoContext = (roles) => {
    for (const role of roles) {
        try {
            return $app.dao().findFirstRecordByData("contexts", "title", role)
        } catch (error) { }
    }
    return null
}

const getRecursiveContexts = (prompt_id, result) => {
    const prompt = $app.dao().findRecordById("contexts", prompt_id)
    if (!prompt) {
        throw new ApiError("No prompt found for id: " + prompt_id)
    }
    result = [...result, prompt.getString('content')]

    const parents = prompt.get('parents')
    parents.forEach(parent => {
        result = getRecursiveContexts(parent, result)
    })

    return result;
}
