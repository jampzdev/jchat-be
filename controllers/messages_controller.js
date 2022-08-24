var messages_mdl = require("../models/messages_model")

exports.getChatRooms = async function(req,res,next) {
    const result = await messages_mdl.getChatRooms(req)

    res.json({
        statusCode : 200,
        devMessage : result
    })
}

exports.getChatMessages = async function(req,res,next) {
    const result = await messages_mdl.getChatMessages(req)

    res.json({
        statusCode : 200,
        devMessage : result
    })
}

exports.getChatRoomInfo = async function(req,res,next) {
    const result = await messages_mdl.getChatRoomInfo(req)

    res.json({
        statusCode : 200,
        devMessage : result
    })
}

exports.saveChatMessage = async function(req,res,next) {
    const result = await messages_mdl.saveChatMessage(req)

    res.json({
        statusCode : 200,
        devMessage : result
    })
}


