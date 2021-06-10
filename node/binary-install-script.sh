#!/usr/bin/bash
wget https://nodejs.org/dist/v14.16.0/node-v14.16.0-linux-x64.tar.xz
tar xvf node-v14.16.0-linux-x64.tar.xz
ln -s /root/node-v14.16.0-linux-x64/bin/node /usr/bin/node
ln -s /root/node-v14.16.0-linux-x64/bin/npm /usr/bin/npm
ln -s /root/node-v14.16.0-linux-x64/bin/npx /usr/bin/npx
node -v

# install express:
npm init
npm install express --save