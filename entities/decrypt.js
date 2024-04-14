const crypto = require('crypto');

function decrypt(encryptedData) {
  const keyString = '12345678901234567890123456789012';
  const ivString = '1234567890123456';
  const key = Buffer.from(keyString, 'utf-8');
  const iv = Buffer.from(ivString, 'utf-8');
  const decipher = crypto.createDecipheriv('aes-256-cbc', key, iv);
  let decryptedData = decipher.update(encryptedData, 'base64', 'utf-8');
  decryptedData += decipher.final('utf-8');
  return JSON.parse(decryptedData);
}

module.exports = decrypt;
