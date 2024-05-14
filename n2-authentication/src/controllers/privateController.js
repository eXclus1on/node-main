const notesDB = require("../db/notesDB");

function getInfo(req, res) {
    res.json({
        status: "ok",
        message: "Welcome user: " + req.userData.email
    });
}

async function getNotes(req, res) {
    const notes = await notesDB.getNotesByUserId(req.userData.userId);
    res.json({
        count: notes.length,
        notes
    })
}

module.exports = {
    getInfo,
    getNotes
}