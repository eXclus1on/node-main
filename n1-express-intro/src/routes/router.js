const router = require("express").Router();
const appController = require("../controllers/appController");

router.get("/", appController.getRoot);
router.get("/countries", appController.getCountries);
router.get("/cities", appController.getCities);

module.exports = router;