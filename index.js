const express = require('express');
const app = express();
const dotenv = require('dotenv').config();
const bodyParser = require('body-parser');
const port = 8080;
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

const sendMailRoute = require('./src/routes/sendMailRoute');

app.use('/api/sendMail', sendMailRoute);

app.listen(port, () => {
  console.log(`Running app listening on port ${port}`);
});
