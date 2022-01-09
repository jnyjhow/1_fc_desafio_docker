const express = require("express");
const mysql = require("mysql");
const getModulo = "SELECT nome_modulo FROM full_cycle;";

const port = 3000;
const app = express();

const conn = mysql.createConnection({
  host: "fc_dd_mysql",
  user: "root",
  password: "root",
  database: "desafio_docker",
  charset: "utf8",
});

conn.connect((err) => {
  if (err) {
    console.error("Mysql connection error!!! >>>>>:", err);
    return;
  }

  console.log("Mysql connection successful!");
});

app.get("/", (_, res) => {
  //declarando variavel para armazenar codigo html
  var finalResult =
    "<h1>Lista de alguns módulos do curso Full Cycle cadastrados no BD: </h1><ul>";

  conn.query(getModulo, function (err, result, fields) {
    if (err) throw err;
    console.log("Result:" + result);
    result.forEach((element) => {
      console.log("Element:" + element.nome_modulo);
      finalResult = finalResult + "<li>" + element.nome_modulo + "</li>";
    });

    finalResult = finalResult + "</ul>";
    console.log("FinalResult: " + finalResult);
    res.send(finalResult);
  });
});

app.listen(port, () => {
  console.log("Express listen on " + port + "!!!");
});
