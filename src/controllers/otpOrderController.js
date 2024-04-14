const decrypt = require("../../entities/decrypt");
const { checkType } = require("../../queues/producer");

async function otpOrderController(req, res) {
  try {
    const { content } = req.body;
    const revertContent = decrypt(content);
    console.log(revertContent);
    // check queue
    await checkType(revertContent);
    res.status(200).json({
      message: "Email sent successfully",
      status: true,
    });
  } catch (error) {
    console.log("Failed to send email:", error);
    res.status(500).json({
      message: "Failed to send email",
      status: false,
    });
  }
}

module.exports = otpOrderController;
