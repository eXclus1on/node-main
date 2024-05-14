const jwtService = require("../services/jwtService");

function authMiddleware(req, res, next) {
    const { token } = req.headers;

    if (!token) {
        res.status(400).json({
            status: "error",
            message: "Missing token"
        })
        return;
    }

    const userData = jwtService.verifyToken(token);
    if (!userData) {
        res.status(400).json({
            status: "error",
            message: "Invalid token"
        })
        return;
    }

    req.userData = userData;
    next();
}

module.exports = authMiddleware;
