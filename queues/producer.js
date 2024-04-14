const amqp = require("amqplib");
async function sendMailToQueue(data, queueName) {
  try {
    const connection = await amqp.connect(process.env.URL_CLOUNDAMQP);
    const channel = await connection.createChannel();
    await channel.assertQueue(queueName);
    await channel.sendToQueue(queueName, Buffer.from(JSON.stringify(data)));
    console.log("sent to queue", queueName);
    setTimeout(() => {
      connection.close();
    }, 500);
  } catch (error) {
    console.error("Error occurred while sending message to queue:", error);
  }
}

async function checkType(content) {
  try {
    const type = content.type;
    let queueName;
    switch (type) {
      case "register":
        queueName = "register_queue";
        break;
      case "forgotPassword":
        queueName = "forgotPassword_queue";
        break;
      case "otpOrder":
        queueName = "otpOrder_queue";
        break;
      case "ecommerce":
        queueName = "ecommerce_queue";
        break;
      case "pdf":
        queueName = "pdf_queue";
        break;
      default:
        queueName = "default_queue";
        break;
    }

    await sendMailToQueue(content, queueName);
  } catch (error) {
    console.error(
      "Error occurred while checking type and sending message to queue:",
      error
    );
  }
}

module.exports = { checkType };
