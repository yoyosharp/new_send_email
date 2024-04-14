const sequelize = require("../../utils/database");
const checkAuth = async (client_id, client_secret) => {
  console.log(client_id, client_secret);
  try {
    const query = `
      SELECT * FROM "Clients" 
      WHERE "ClientId" = '${client_id}' AND "ClientSecret" = '${client_secret}';
    `;
    const [client] = await sequelize.query(query);
    return client.length > 0 ? true : false;
  } catch (error) {
    console.error(
      "Error occurred while checking Client_id and Client_secret:",
      error
    );
    throw error;
  }
};

exports.checkAuth = checkAuth;
