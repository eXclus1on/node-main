const express = require("express");
const app = express();

const port = 3000;

app.use(cors())
app.use(express.json())

app.get("/", function(req, res) {
    res.send("Hi");
})

function isIDNumericMiddleware(req, res, next) {
    console.log("HANDLER 1")
    const id = parseInt(req.params.id);
    if (isNaN(id)) {
        res.status(404).send("Invalid URL");
        return;
    }
    req.id = id;
    next();
}


app.get("/notes/:id", isIDNumericMiddleware, function (req, res) {
    console.log("HANDLER 2")
    res.send("HELLO " + req.id)
}
)

app.listen(port, function() {
    console.log(`Listening on ${port}`);
})