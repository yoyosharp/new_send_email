const encrypt = require("../../entities/encrypt");
const { checkAuth } = require("../services/clientId");

const checkAuthMiddleware = async (req, res, next) => {
  const { client_id, secret } = req.headers;
  try {
    console.log(client_id, secret);
    const client_secret = encrypt(secret);
    const isClientValid = await checkAuth(client_id, client_secret);
    if (!isClientValid) {
      throw new Error("Client is invalid");
    }
    next();
    console.log("Client is valid");
  } catch (error) {
    console.error("Error occurred during authentication:", error);
    res.status(401).send("Unauthorized");
  }
};

module.exports = checkAuthMiddleware;
