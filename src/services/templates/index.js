const sequelize = require('../../utils/database');

const getTemplate = async (name) => {
  try {
    const template = await sequelize.query(
      'SELECT template FROM emailtemplates WHERE name = :name',
      {
        replacements: { name: name },
        type: sequelize.QueryTypes.SELECT,
      },
    );

    if (template.length === 0) {
      throw new Error('Template not found');
    }

    return template[0];
  } catch (error) {
    console.error('Error in getTemplate:', error);
    throw error;
  }
};

module.exports = {
  getTemplate,
};
