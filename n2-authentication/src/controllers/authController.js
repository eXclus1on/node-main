const connection = require("../db/connection");

async function postRegister (req, res) {
    // const email = req.body.email;
    // const password = req.body.password;
    const { email, password } = req.body;
    
    const sql = "INSERT INTO users (email, password) VALUES (?, ?)";
    const values = [email, password];
    
    try {
        const [result] = await connection.promise().query(sql, values);
        console.log(result);
        
        res.json(result);
    } catch(error) {
        res.send("There was an error!");
    }   
}

module.exports = {
    postRegister
}