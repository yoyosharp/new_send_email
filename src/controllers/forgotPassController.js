const decrypt = require('../../entities/decrypt');
const { consumeMessage } = require('../../queues/consumers/queue_register');
const { checkType } = require('../../queues/producer');

async function forgotPassController(req, res) {
  try {
    const { dataReq } = req.body;
    const content = JSON.parse(decrypt(dataReq));
    await checkType(content);
    res.status(200).json({
      message: 'Email sent successfully',
    });
  } catch (error) {
    console.log('Failed to send email:', error);
    res.status(500).send('Failed to send email');
  }
}

module.exports = forgotPassController;
