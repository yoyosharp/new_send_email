const amqp = require("amqplib");
const dotenv = require("dotenv");
const publishMessage = require("../../entities/publishMessage");
const sendMailZeptomail = require("../../entities/zeptomailBase");
const { getTemplate } = require("../../src/services/templates");
const { createMessage } = require("../../src/services/message/index");
dotenv.config();

const queueName = "otpOrder_queue";
const url = "api.zeptomail.com/";
const token =
  "Zoho-enczapikey wSsVR61zqRbzB/h1mDP5J+85ml9cVAjyFBgujVug6XepGq+T9sc5w0bIVwSgFKIZRWZoHTcSpO14nhhT0mAKhtwungkIASiF9mqRe1U4J3x17qnvhDzMV2xdkRCPLoMAzwVsmmBiFMxu";
const open = amqp.connect(process.env.URL_CLOUNDAMQP);

// Consumer
const otpOrderMessage = () => {
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
            console.log(msg.content.toString());
            const data = JSON.parse(msg.content.toString());
            // call template
            const dataApiTemplate = await getTemplate(data.template);
            const template = await dataApiTemplate.template.replace(
              "OTP_CODE",
              data.otp
            );
            const resultData = {
              email: data.user_email,
              type: data.type,
              title: data.title,
            };
            // Send mail to user
            await sendMailZeptomail(resultData, url, token, template);
            // Save data in database
            await createMessage(data)
              .then(() => {
                console.log("save database success");
              })
              .catch((error) => {
                console.error("save error: ", error);
              });
            console.log("mission complete");
          },
          { noAck: true }
        );
      })
    )
    .catch((error) => console.error(error));
};

module.exports = {
  publishMessage,
  otpOrderMessage,
};

require("make-runnable");
