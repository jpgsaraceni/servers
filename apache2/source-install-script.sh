#!/usr/bin/bash
apt-get update
apt-get install libapr1-dev libaprutil1-dev build-essential libssl-dev libpcre3-dev -y
wget https://downloads.apache.org//httpd/httpd-2.4.46.tar.gz
tar xvfz httpd-2.4.46.tar.gz
cd httpd-2.4.46
./configure --enable-ssl --enable-so --enable-mods-shared="reallyall" --enable-mpmsshared="all"
make
make install
ldconfig
ln -s /usr/local/apache2/bin/apachectl /etc/init.d/apache
update-rc.d apache defaults
systemctl restart apache.service
systemctl status apache.service

# executar no terminal (com permissão de execução)
