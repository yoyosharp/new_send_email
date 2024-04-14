const decrypt = require('../../entities/decrypt');
const { checkType } = require('../../queues/producer');

async function pdfController(req, res) {
  try {
    const { content } = req.body;
    const revertContent = decrypt(content);
    console.log(revertContent);
    // check queue
    await checkType(revertContent);
    res.status(200).json({
      message: 'Success send email pdf',
    });
  } catch (error) {
    console.log('Failed to send email:', error);
    res.status(500).send('Failed to send email pdf');
  }
}

module.exports = pdfController;
