const dotenv = require("dotenv");
const { Sequelize } = require("sequelize");
dotenv.config();

const sequelize = new Sequelize({
  dialect: "postgres",
  host: "localhost",
  port: 5432,
  username: "postgres",
  password: "Summoners.1",
  database: "postgres",
  logging: false,
});

module.exports = sequelize;
