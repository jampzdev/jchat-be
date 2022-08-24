const message_mdl = require("../models/messages_model")

module.exports = (io) => {
    io.on("connection", (socket) => {
        console.log('a user connected');
        socket.on("disconnect", () => {
            console.log("user disconnected")
        })

        socket.on("update chat message", async function (data) {
            io.emit("update chat message front", await message_mdl.getChatMessageById(data))
        })

	})

}