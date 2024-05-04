const authDB = require("../db/authDB");
const argon2 = require("argon2");

async function postRegister (req, res) {
    // const email = req.body.email;
    // const password = req.body.password;
    const { email, password } = req.body;

    const hash = await argon2.hash(password);
    
    const userId = await authDB.insertUser(email, hash);

    if (userId === -1) {
        res.status(400).json({
            status: "Error",
            message: "User already exists"
        })
        return;
    }
    res.json({
        status: "OK",
        message: "User created",
        userId
    });
}

module.exports = {
    postRegister
}