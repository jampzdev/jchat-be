const express       = require('express');
const cors          = require('cors');
const config        = require('./config/config')
var app             = express();
const http          = require("http")
const server        = http.createServer(app)
const { Server }    = require("socket.io")

const cors_options = config.CorsOptions
const env_settings = config.EnvSettings

const io            = new Server(server, { cors: cors_options })

var messages_router = require("./routes/messages_router")
var users_router     = require("./routes/user_router")

app.use(cors());
app.use(
    express.urlencoded({
      extended: true,
    })
  );
app.use(express.json()); 

app.use("/messages",messages_router)
app.use("/users",users_router)


require("./sockets/messages")(io)


server.listen(env_settings.Port, () => console.log("Express server is running at port no : " + env_settings.Port))