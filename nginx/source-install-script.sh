#!/usr/bin/bash
apt update
apt install gcc -y
apt-get update
apt-get install build-essential -y
wget https://ftp.pcre.org/pub/pcre/pcre-8.44.tar.gz
tar -zxf pcre-8.44.tar.gz
cd pcre-8.44
./configure
make
make install
cd ..
wget http://zlib.net/zlib-1.2.11.tar.gz
tar -zxf zlib-1.2.11.tar.gz
cd zlib-1.2.11
./configure
make
make install
cd ..
wget http://www.openssl.org/source/openssl-1.1.1g.tar.gz
tar -zxf openssl-1.1.1g.tar.gz
cd openssl-1.1.1g
./Configure linux-x86_64 --prefix=/usr
make
make install
cd ..
wget https://nginx.org/download/nginx-1.18.0.tar.gz
tar zxf nginx-1.18.0.tar.gz
cd nginx-1.18.0
./configure --sbin-path=/usr/local/nginx/nginx --conf-path=/usr/local/nginx/nginx.conf --pid-path=/usr/local/nginx/nginx.pid --with-pcre=../pcre-8.44 --with-zlib=../zlib-1.2.11 --with-http_ssl_module
make
make install
cd ..
/usr/local/nginx/nginx

# executar este arquivo no terminal (com permissão de executar)