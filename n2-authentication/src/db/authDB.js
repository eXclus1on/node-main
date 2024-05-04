const connection = require("./connection");

async function insertUser(email, hash) {

    const sql = "INSERT INTO users (email, password) VALUES (?, ?)";
    const values = [email, hash];
    
    try {
        const [result] = await connection.promise().query(sql, values);
        
        return result.insertId;

    } catch(error) {
        console.log(error);
        return -1;
    }   
}

module.exports = {
    insertUser
}