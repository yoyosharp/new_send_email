const amqp = require("amqplib");
const dotenv = require("dotenv").config();
const publishMessage = require("../../entities/publishMessage");
const sendMailZeptomail = require("../../entities/zeptomailBase");
const { createMessage } = require("../../src/services/message/index");
const { getTemplate } = require("../../src/services/templates");
const { formatDateTime } = require("../../entities/formatDate");

const queueName = "ecommerce_queue";
const url = "api.zeptomail.com/";
const token =
  "Zoho-enczapikey wSsVR61zqRbzB/h1mDP5J+85ml9cVAjyFBgujVug6XepGq+T9sc5w0bIVwSgFKIZRWZoHTcSpO14nhhT0mAKhtwungkIASiF9mqRe1U4J3x17qnvhDzMV2xdkRCPLoMAzwVsmmBiFMxu";
const open = amqp.connect(process.env.URL_CLOUNDAMQP);

// Consumer
const ecommerceMessage = () => {
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
              const dataApiTemplate = await getTemplate(data.template);
              // Detail client
              const client = {
                buyer_id: data.buyer.buyer_id,
                productName: data.buyer.product_name.join(", "),
                email: data.buyer.buyer_email,
                title: data.buyer.title,
                tracking_number: data.buyer.tracking_number,
                tomxu_paid: data.buyer.tomxu_paid,
                pre_balance: data.buyer.pre_balance,
                post_balance: data.buyer.post_balance,
                id_transactions: data.buyer.id_transactions,
                date: formatDateTime(data.buyer.date, "DD-MM-YYYY"),
                type: data.type,
              };

              const templateClient = dataApiTemplate.template
                .replace("PRODUCT", client.productName)
                .replace("TRACKING_NUMBER", client.tracking_number)
                .replace("DATE_ORDER", client.date)
                .replace("PRICE_ORDER", client.tomxu_paid)
                .replace("PRICE_START", client.pre_balance)
                .replace("PRICE_END", client.post_balance);
              // detail vendorsArr

              const vendors = data.seller.map((seller) => ({
                seller_id: seller.seller_id,
                productName: seller.product_name.join(", "),
                email: seller.seller_email,
                title: seller.title,
                tracking_number: seller.tracking_number,
                tomxu_paid: seller.tomxu_paid,
                pre_balance: seller.pre_balance,
                post_balance: seller.post_balance,
                id_transaction: seller.id_transaction,
                date: formatDateTime(seller.date, "DD-MM-YYYY"),
                type: data.type,
              }));

              // Call zeptomail for client
              await sendMailZeptomail(client, url, token, templateClient)
                .then(() => console.log("message sent successfully"))
                .catch((error) => console.error("message not sent", error));

              // Call zeptomail for vendor
              await Promise.all(
                vendors.map(async (vendor) => {
                  // Generate template for vendor
                  const templateVendor = dataApiTemplate.template
                    .replace("PRODUCT", vendor.productName)
                    .replace("TRACKING_NUMBER", vendor.tracking_number)
                    .replace("DATE_ORDER", vendor.date)
                    .replace("PRICE_ORDER", vendor.tomxu_paid)
                    .replace("PRICE_START", vendor.pre_balance)
                    .replace("PRICE_END", vendor.post_balance);
                  await sendMailZeptomail(vendor, url, token, templateVendor);
                })
              );

              // Save information to the database
              await createMessage(client)
                .then(() => console.log("message client saved"))
                .catch((error) =>
                  console.error("message client not saved DB", error)
                );

              await Promise.all(
                vendors.map(async (vendor) => {
                  await createMessage(vendor)
                    .then(() => console.log("message vendor saved"))
                    .catch((error) =>
                      console.error("message vendor not saved DB", error)
                    );
                })
              );
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
  ecommerceMessage,
};

require("make-runnable");
