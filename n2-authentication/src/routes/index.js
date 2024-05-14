const router = require("express").Router();
const appController = require("../controllers/appController");
const authController = require("../controllers/authController");
const privateController = require("../controllers/privateController");
const authMiddleware = require("../middleware/authMiddleware");

router.get("/", appController.root);
router.post("/register", authController.postRegister);
router.post("/login", authController.postLogin);

router.get("/private/info", authMiddleware, privateController.getInfo);
router.get("/private/notes", authMiddleware, privateController.getNotes);

module.exports = router;