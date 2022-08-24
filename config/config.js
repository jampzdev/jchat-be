require("dotenv").config()

exports.Mysql = {
    'Host': process.env.Host,
    'User': process.env.User,
    'Password': process.env.Password,
    'Database': process.env.Database,
    "Charset": process.env.Charset
}

exports.CorsOptions = {
    origin: process.env.FrontEndUrl,
    method:["POST","GET"],
    optionsSuccessStatus: 200 
}

exports.EnvSettings = {
    Port: process.env.Port
}

