const connection = require("./connection");

async function getNotesByUserId(userId) {
    const sql = "SELECT * FROM notes WHERE user_id = ?";
    const values = [userId];

    const [results] = await connection.promise().query(sql, values);

    return results;
}

module.exports = {
    getNotesByUserId
}