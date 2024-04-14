const amqp = require("amqplib");
const dotenv = require("dotenv");
const publishMessage = require("../../entities/publishMessage");
const sendMail = require("../../entities/zeptomailBase");
dotenv.config();

const queueName = "register_queue";
const url = "api.zeptomail.com/";
const token =
  "Zoho-enczapikey wSsVR61w8kbxWqwsnzStcr1pyFRVUlOkRhh131v36nD0HfmW8sdvwkSbA1ehFaMaR2Y9Qjsare5/zkgEgTpd24kvzV0FCCiF9mqRe1U4J3x17qnvhDzMV2RVkBGLKIwAxAhrmWhjGsAh+g==";
const open = amqp.connect(process.env.URL_CLOUNDAMQP);

// Consumer
const consumeMessage = () => {
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
  consumeMessage,
};

require("make-runnable");
