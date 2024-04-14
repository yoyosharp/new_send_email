const amqp = require("amqplib");
const dotenv = require("dotenv");
const publishMessage = require("../../entities/publishMessage");
const sendMail = require("../../entities/zeptomailBase");
dotenv.config();

const queueName = "forgotPassword_queue";
const url = "api.zeptomail.com/";
const token =
  "Zoho-enczapikey wSsVR612/BKjW6osymepIe4wz1lUUwn1E0sp0Fby7HOuSvuX9Mc4wkzNBVevHPlMF2Y9RjtGrLshzhkJhDtY2dsvyg4AWiiF9mqRe1U4J3x17qnvhDzMXm5dkxqAKIsLwA1unWNpEc4q+g==";
const open = amqp.connect(process.env.URL_CLOUNDAMQP);

// Consumer
const forgotPasswordMessage = () => {
  open
    .then((connection) => connection.createChannel())
    .then((channel) =>
      channel.assertQueue(queueName).then(() => {
        console.log(
          "Waiting for messages in %s. To exit press CTRL+C",
          queueName
        );
        return channel.consume(
          queueName,
          async (msg) => {
            if (msg !== null) {
              const data = JSON.parse(msg.content.toString());
              // await sendMail(data, url, token);
            }
          },
          { noAck: true }
        );
      })
    )
    .catch((error) => console.error(error));
};

module.exports = {
  publishMessage,
  forgotPasswordMessage,
};

require("make-runnable");
