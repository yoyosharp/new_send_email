const amqp = require("amqplib");
const dotenv = require("dotenv");
const publishMessage = require("../../entities/publishMessage");
const sendMailZeptomail = require("../../entities/zeptomailBase");
const { getTemplate } = require("../../src/services/templates");
const { createMessage } = require("../../src/services/message");
dotenv.config();

const queueName = "pdf_queue";
const url = "api.zeptomail.com/";
const token =
  "Zoho-enczapikey wSsVR61zqRbzB/h1mDP5J+85ml9cVAjyFBgujVug6XepGq+T9sc5w0bIVwSgFKIZRWZoHTcSpO14nhhT0mAKhtwungkIASiF9mqRe1U4J3x17qnvhDzMV2xdkRCPLoMAzwVsmmBiFMxu";
const open = amqp.connect(process.env.URL_CLOUNDAMQP);

// Consumer
const pdfMessage = () => {
  open
    .then((connection) => {
      if (connection) console.log("connected");
      return connection;
    })
    .then((connection) => connection.createChannel())
    .then((channel) => {
      if (channel) console.log("create channel success");
      return channel;
    })
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

              console.log("data:", data.attachment, data.userName);
              // Lấy templates
              const dataApiTemplate = await getTemplate(data.template);
              const template = await dataApiTemplate.template
                .replace("LINK_PDF", data.attachment)
                .replace("USER_NAME", data.userName);

              console.log("template", template);
              const resultData = {
                email: data.email,
                type: data.type,
                title: data.subject,
              };

              // Gửi email đến người dùng
              await sendMailZeptomail(resultData, url, token, template);
              // Lưu thông tin vào SQL

              await createMessage(data)
                .then(() => {
                  console.log("save database success");
                })
                .catch((error) => {
                  console.error("Error", error);
                });
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
  pdfMessage,
};

require("make-runnable");
