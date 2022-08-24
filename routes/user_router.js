var express = require("express")
var router = express.Router()

var user_ctrl = require("../controllers/user_controller")

router.post("/auth-user",function (req,res,next){
    user_ctrl.Auth(req,res,next)
})

router.post("/register-user",function (req,res,next){
    user_ctrl.RegisterUser(req,res,next)
})

module.exports = router