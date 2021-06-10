# Passo a passo instalação da chave auto-assinada OpenSSL
1.No terminal, executar:
`openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt`
2.No arquivo `/usr/local/apache2/conf/httpd.conf`, descomentar:

`# LoadModule ssl_module modules/mod_ssl.so`
3.No mesmo arquivo, apagar:

`Listen 80`
4.No mesmo arquivo, acrescentar:
```
Listen 45.76.3.162:80
Listen 45.76.3.162:443
<VirtualHost *>
    ServerName 45.76.3.162
    SSLEngine on
    SSLCertificateFile "/etc/ssl/certs/apache-selfsigned.crt"
    SSLCertificateKeyFile "/etc/ssl/private/apache-selfsigned.key"
</VirtualHost>
```
5.No terminal, executar:

`systemctl restart apache.service`