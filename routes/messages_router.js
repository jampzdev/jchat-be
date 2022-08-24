var express = require("express")
var router = express.Router()

var messages_ctrl = require("../controllers/messages_controller")

router.post("/get-chat-rooms",function (req,res,next){
    messages_ctrl.getChatRooms(req,res,next)
})

router.post("/get-chat-messages",function (req,res,next){
    messages_ctrl.getChatMessages(req,res,next)
})

router.post("/get-chat-room-info",function (req,res,next){
    messages_ctrl.getChatRoomInfo(req,res,next)
})

router.post("/save-chat-message",function (req,res,next){
    messages_ctrl.saveChatMessage(req,res,next)
})

module.exports = router