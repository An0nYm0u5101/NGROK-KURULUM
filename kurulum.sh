#/bin/bash
cd files
mv ngrok /data/data/com.termux/files/usr/bin
cd /data/data/com.termux/files/usr/bin
chmod 777 ngrok
cd -
clear
bash banner.sh
cd ../..
rm -rf ngrok
