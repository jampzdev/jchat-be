var user_mdl = require("../models/user_model")

exports.Auth = async function(req,res,next) {
    const result = await user_mdl.Auth(req)

    res.json({
        statusCode : 200,
        devMessage : result
    })
}

exports.RegisterUser = async function(req,res,next) {
    const result = await user_mdl.RegisterUser(req)

    res.json({
        statusCode : 200,
        devMessage : result
    })
}



