# Passo a passo para instalação do FTP
1.No terminal, executar:
```
apt install vsftpd -y
adduser amiguinhoftp
```
2.No arquivo `/etc/vsftpd.conf`, descomentar:
`# write_enabled=YES`
3.No mesmo arquivo, acrescentar:
`user_sub_token=amiguinhoftp`
4.No terminal, executar:
```
echo "amiguinhoftp" | tee -a /etc/vsftpd.userlist
systemctl restart vsftpd
```