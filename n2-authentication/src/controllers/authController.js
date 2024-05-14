const authDB = require("../db/authDB");
const argon2 = require("argon2");
const jwtService = require("../services/jwtService");

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

async function postLogin(req, res) {
    const { email, password } = req.body;

    // ler o utilizador da base de dados
    const result = await authDB.getUserByEmail(email);

    if (!result) {
        res.status(400).json({
            status: "error",
            message: "User not found"
        });
        return;
    } 

    const dbSavedHash = result.password;
    const passwordMatch = await argon2.verify(dbSavedHash, password);
    if (!passwordMatch) {
        res.status(404).json({
            status: "error",
            message: "Wrong password"
        });
        return;
    }

    const token = jwtService.createToken(result.id, result.email);

    res.json({
        status: "ok",
        message: "User logged in",
        token
    });
    
}



module.exports = {
    postRegister,
    postLogin
}