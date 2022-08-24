var conn = require("../services/mysql/mysql_service")

const getChatRooms = async function(req){
    let e = req.body

    const getQry = "SELECT id,name,participants,date_created FROM chat_rooms_tbl";
    const resGet = await conn.getQuery(getQry,[]).then((res)=>res);

    if(resGet){
        return resGet
    }
    else{
        return false
    }
}

const getChatMessages = async function(req){
    let e = req.body

    const getQry = "SELECT a.id,a.chat_room_id,a.user_id,a.message,IF(?=a.user_id,true,false) AS is_owner,CONCAT(b.fname,' ',b.lname) as name,a.date_created FROM chats_tbl a LEFT JOIN users_tbl b on b.id = a.user_id WHERE a.chat_room_id = ?";
    const resGet = await conn.getQuery(getQry,[e.user_id,e.chat_room_id]).then((res)=>res);

    if(resGet){
        return resGet
    }
    else{
        return false
    }
}

const getChatRoomInfo = async function(req){
    let e = req.body

    const getQry = "SELECT * FROM chat_rooms_tbl WHERE id = ?"
    const resGet = await conn.findFirst(getQry,[e.chat_room_id]).then((res)=>res);
    if(resGet){
        return resGet
    }
    else{
        return false
    }
}

const saveChatMessage = async function(req){
    let e = req.body

    const getQry = "INSERT INTO chats_tbl(chat_room_id,user_id,message)VALUES(?,?,?)"
    const resGet = await conn.executeQuery(getQry,[e.chat_room_id,e.user_id,e.message]).then((res)=>res);
    if(resGet){
        return resGet.insertId
    }
    else{
        return false
    }
}

const getChatMessageById = async function(data){
    console.log(data)
    const getQry = "SELECT a.id,a.chat_room_id,a.user_id,a.message,IF(?=a.user_id,true,false) AS is_owner,CONCAT(b.fname,' ',b.lname) as name,a.date_created FROM chats_tbl a LEFT JOIN users_tbl b on b.id = a.user_id WHERE a.id = ?";
    const resGet = await conn.findFirst(getQry,[data.user_id,data.id]).then((res)=>res);
    console.log(resGet)
    if(resGet){
        return resGet
    }
    else{
        return false
    }
}

module.exports = {
    getChatRooms,
    getChatMessages,
    getChatRoomInfo,
    saveChatMessage,
    getChatMessageById
}