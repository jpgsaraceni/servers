# Configuração de servidores em nuvem utilizando Apache (compilação do source), nginx e Node.js. 
Nesse primeiro contato com servidores, configurei um servidor Ubuntu 20.04 utilizando **Apache 2**,
compilado a partir da fonte para servir páginas estáticas, instalei um certificado auto-assinado utilizando **OpenSSL**, para acesso via **https**, configurei e transferi arquivos via **FTP (vsftpd)** 
pelo terminal;

Instalei e configurei um servidor **nginx** compilado da fonte, com FTP e https (certificado auto-assinado);

Instalei e configurei um servidor **node.js** a partir do binário, e criei uma API CRUD utilizando o módulo express do node, que acessei fazendo requisições xhttp request utilizando ajax no front-end.