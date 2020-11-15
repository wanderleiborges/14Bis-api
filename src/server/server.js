const app = require("../app");
// db
const sequelize = require("../config/database");

const PORT = process.env.PORT || 3333;

sequelize
  .sync()
  .then(() => {
    app.listen(PORT, () => {
      console.log(`Server is running on port ${PORT}`);
    });
  })
  .catch((err) => {
    console.log(`Erro ao carregar o banco de dados.
    ${err}
  `);
  });
