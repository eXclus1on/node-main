require("dotenv").config();
const express = require("express");
const cors = require("cors");
const indexRouter = require("./routes/index");

const app = express();
const port = 3000;

app.use(cors());
app.use(express.json());
app.use(indexRouter);

app.listen(port, function() {
    console.log(`Listening on ${port}`);
});
