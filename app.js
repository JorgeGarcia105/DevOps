const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("¡Hola, DevOps!");
});

app.listen(3000, () => console.log("Servidor en puerto 3000"));
