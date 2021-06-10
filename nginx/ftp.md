# Passo a passo configuração do FTP:
1.No terminal, executar (com permissão de executar):

`./ftp-install-script.sh`
2.No arquivo `/etc/vsftpd.conf`, descomentar:
```
# write_enabled=YES
# chroot_local_user=YES
```
3.No mesmo arquivo, acrescentar:
```
user_sub_token=amiguinhoftp
local_root=/home/amiguinhoftp/ftp
```
4.No terminal, executar:
```
echo "amiguinhoftp" | tee -a /etc/vsftpd.userlist
systemctl restart vsftpd