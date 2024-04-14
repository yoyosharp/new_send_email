const decrypt = require("../../entities/decrypt");
const { checkType } = require("../../queues/producer");

async function ecommerceController(req, res) {
  try {
    const { content } = req.body;
    const revertContent = decrypt(content);
    console.log(revertContent);
    // check queue
    await checkType(revertContent);
    res.status(200).json({
      message: "Email sent successfully",
    });
  } catch (error) {
    console.log("Failed to send email ecommerce:", error);
    res.status(500).send("Failed to send email ecommerce");
  }
}

module.exports = ecommerceController;
