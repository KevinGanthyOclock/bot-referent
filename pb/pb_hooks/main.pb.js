routerAdd("GET", "/api/generateResponse/:message_id", (c) => {
    if (!c.get("authRecord")) {
        throw new UnauthorizedError("Unauthorized")
    }
    
    const message_id = c.pathParam("message_id")
    if (!message_id) {
        throw new BadRequestError("message_id is required");
    }
    
    const message = $app.dao().findRecordById("messages", message_id)
    if (!message) {
        throw new NotFoundError("Message not found")
    }
    
    const utils = require(`${__hooks}/utils.js`)
    const prompt = utils.aggregatePrompts(message.getString('promo'))
    const response = utils.askToAi(prompt, message.getString('question'))

    message.set('response', response)
    $app.dao().saveRecord(message)

    return c.json(200, message)
})


routerAdd("GET", "/api/sendResponse/:message_id", (c) => {
    if (!c.get("authRecord")) {
        throw new UnauthorizedError("Unauthorized")
    }
    
    const message_id = c.pathParam("message_id")
    if (!message_id) {
        throw new BadRequestError("message_id is required");
    }
    
    const message = $app.dao().findRecordById("messages", message_id)
    if (!message) {
        throw new NotFoundError("Message not found")
    }

    let result = null
    try {
        const utils = require(`${__hooks}/utils.js`)
        result = utils.sendToDiscord(
            message.getString('discord_ref'), 
            message.getString('response')
        )
        message.set('response_sent', true)
    }
    catch (error) {
        throw new ApiError("Error while sending response")
    }

    $app.dao().saveRecord(message)
    return c.json(200, { "result": result })
})
