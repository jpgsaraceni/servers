# Passo a passo para instalação de certificado auto-assinado OpenSSL
1.No terminal, executar:
`openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt`
2.No arquivo `/usr/local/nginx/nginx.conf`, descomentar e alterar:
```
#	server {
#		listen              443 ssl;
#		server_name         localhost;
#		ssl_certificate     /etc/ssl/certs/nginx-selfsigned.crt;
#		ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;
#	location / {
#            root   /home/amiguinhoftp/ftp/www;
#            index  index.html index.htm;
#	     }
#	}
```