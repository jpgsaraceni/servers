#!/usr/bin/bash
apt install vsftpd -y
adduser amiguinhoftp
mkdir /home/amiguinhoftp/ftp
chown nobody:nogroup /home/amiguinhoftp/ftp
chmod a-w /home/amiguinhoftp/ftp
mkdir /home/amiguinhoftp/ftp/www
chown amiguinhoftp:amiguinhoftp /home/amiguinhoftp/ftp/www
echo "vsftpd test file" | tee /home/amiguinhoftp/ftp/www/test.txt