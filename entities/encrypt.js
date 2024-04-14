const crypto = require('crypto');

function encrypt(data) {
  const keyString = '12345678901234567890123456789012';
  const ivString = '1234567890123456';
  const key = Buffer.from(keyString, 'utf-8');
  const iv = Buffer.from(ivString, 'utf-8');
  const jsonData = JSON.stringify(data);
  const cipher = crypto.createCipheriv('aes-256-cbc', key, iv);
  let encryptedData = cipher.update(jsonData, 'utf-8', 'base64');
  encryptedData += cipher.final('base64');
  return encryptedData;
}

module.exports = encrypt;
