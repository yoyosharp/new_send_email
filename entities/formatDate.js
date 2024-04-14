const moment = require('moment');

function formatDateTime(dateTimeString, outputFormat) {
  return moment(dateTimeString).format(outputFormat);
}
module.exports = {
  formatDateTime: formatDateTime,
};
