const { Router } = require("express");
const router = Router();

const checkAuthMiddleware = require("../middlewares/checkAuthMiddleware");
const registerController = require("../controllers/registerController");
const forgotPassController = require("../controllers/forgotPassController");
const otpOrderController = require("../controllers/otpOrderController");
const ecommerceController = require("../controllers/ecommerceController");
const pdfController = require("../controllers/pdfController");
// const demoController = require("../controllers/demoController");

router.post("/register", checkAuthMiddleware, registerController);
router.post("/forgotPassword", checkAuthMiddleware, forgotPassController);
// route đang hoạt động
router.post("/ecommerce", checkAuthMiddleware, ecommerceController);
router.post("/otpOrder", checkAuthMiddleware, otpOrderController);
router.post("/pdf", checkAuthMiddleware, pdfController);
// router.get("/demo", demoController);

// check
router.post("/check", checkAuthMiddleware);

module.exports = router;
