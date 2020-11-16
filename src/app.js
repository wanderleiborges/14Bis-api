const express = require("express");
const path = require("path");
const cors = require("cors");
// routes
const usersRoutes = require("./routes/users");
const startupRoutes = require("./routes/startup");
const mentorRoutes = require("./routes/mentor");
const empreendedorRoutes = require("./routes/empreendedor");
const investidorRoutes = require("./routes/investidor");
const consultorRoutes = require("./routes/consultor");
// db
const sequelize = require("./config/database");

const app = express();

app.use(cors());
app.use(express.json());

// routes
app.use("/users", usersRoutes);
app.use("/startup", startupRoutes);
app.use("/mentor", mentorRoutes);
app.use("/empreendedor", empreendedorRoutes);
app.use("/investidor", investidorRoutes);
app.use("/consultor", consultorRoutes);

module.exports = app;
