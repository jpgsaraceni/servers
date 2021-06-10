// arquivo para servir um objeto básico na porta 80, utilizando express
const express = require('express');
const app = express();

const produto = [
  {
    "id": 1,
    "nome": "Produto A"
  },
  {
    "id": 3,
    "nome": "Produto B"
  },
  {
    "id": 6,
    "nome": "Produto C"
  },
  {
    "id": 3,
    "nome": "Produto D"
  }]

app.get('/', function (req, res) {
  const id = req.query.id;
  let elementos = [];

  if (id) {
    for (i in produto) {
      for (j in id) {
        if (produto[i].id == id[j]) {
          elementos.push(produto[i])
        }
      }
    }
    res.json(elementos);
  } else {
    res.json();
  }
});
app.listen(80);
