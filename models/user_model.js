var conn = require("../services/mysql/mysql_service")

const Auth = async function(req){
    let e = req.body

    const getQry = "SELECT* FROM users_tbl where username = ? AND pwd = ?";
    const resGet = await conn.getQuery(getQry,[e.user_name,e.pwd]).then((res)=>res);

    if(resGet){
        if(resGet.length == 0){
            return ""
        }
        else{
            let data = resGet[0]
            let tmp = {
                id : data.id,
                fname : data.fname,
                mname : data.mname,
                lname : data.lname,
                username : data.username,
                displayname : data.fname + " " + data.lname
            }
            return tmp
        }
    }
    else{
        return false
    }
}

const RegisterUser = async function(req){
    let e = req.body

    const saveQry = "INSERT INTO users_tbl(fname,mname,lname,username,pwd)VALUES(?,?,?,?,?)"
    const resSave = await conn.executeQuery(saveQry,[e.fname,e.mname,e.lname,e.username,e.pwd]).then((res)=>res);
    if(resSave){
        return true
    }
    else{
        return false
    }
}

module.exports = {
    Auth,
    RegisterUser
}