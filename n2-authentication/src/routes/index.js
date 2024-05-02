const express = require("express");
const router = express.Router();
const appController = require("../controllers/appController");
const authController = require("../controllers/authController");

router.get("/", appController.root);
router.post("/register", authController.postRegister);

module.exports = router;