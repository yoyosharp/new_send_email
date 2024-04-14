const amqp = require('amqplib');
const dotenv = require('dotenv');

dotenv.config();

const open = amqp.connect(process.env.URL_CLOUNDAMQP);

// Publisher function
const publishMessage = async (payload, queueName) => {
  try {
    const connection = await open;
    const channel = await connection.createChannel();
    await channel.assertQueue(queueName);
    await channel.sendToQueue(queueName, Buffer.from(JSON.stringify(payload)));
  } catch (error) {
    console.error('Error publishing message:', error);
  }
};

module.exports = publishMessage;
