const { SendMailClient } = require("zeptomail");

async function sendMailZeptomail(data, url, token, template) {
  try {
    let client = new SendMailClient({
      url: url,
      token: token,
    });
    await client.sendMail({
      from: {
        address: "noreply@tomiru.com",
        name: "Tomiru.com - Thông báo",
      },
      to: [
        {
          email_address: {
            address: data.email,
          },
        },
      ],
      subject: data.title,
      htmlbody: template,
    });
  } catch (error) {
    console.error("Failed to send email:", error);
    throw error;
  }
}

module.exports = sendMailZeptomail;
