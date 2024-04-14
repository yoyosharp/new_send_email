const sequelize = require('../../utils/database');

const createMessage = async (data) => {
  try {
    console.log(data);
    const currentDate = Math.floor(new Date().getTime() / 1000);
    const createTime = new Date().toISOString();
    const sendTime = new Date().toISOString();
    const jsonData = JSON.stringify(data);

    const result = await sequelize.query(
      'INSERT INTO emailmessages (requestid, date, createtime, emailproviderid, data, subject, status, sendtime) VALUES ($1, $2, $3, $4, $5, $6, $7, $8) RETURNING *',
      {
        bind: [
          `SO-${currentDate}`,
          currentDate,
          createTime,
          1,
          jsonData,
          data.type,
          1,
          sendTime,
        ],
      },
    );

    return result[0];
  } catch (error) {
    console.error('Error in createMessage:', error);
    throw error;
  }
};

module.exports = {
  createMessage,
};
