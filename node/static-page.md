# Passo a passo para servir uma página estática (de teste)
1.Criar arquivo `app.js`:
```
var fs = require('fs'),
    http = require('http');
http.createServer(function (req, res) {
  fs.readFile(__dirname + req.url, function (err,data) {
    if (err) {
      res.writeHead(404);
      res.end(JSON.stringify(err));
      return;
    }
    res.writeHead(200);
    res.end(data);
  });
}).listen(8080);
```
2.Criar arquivo `index.html` (página a ser exibida no navegador);
3.No terminal, executar `node app.js`;
4.No navegador, abrir (endereço IP ou domínio):8080