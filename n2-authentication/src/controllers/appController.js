function root(req, res) {
    res.json({
        status: "OK",
        message: "Hello"
    });
}

module.exports = {
    root
}