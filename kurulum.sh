#/bin/bash
mv files/ngrok /data/data/com.termux/files/usr/bin
chmod 777 /data/data/com.termux/files/usr/bin/ngrok
clear
bash files/banner.sh
cd ..
rm -rf ngrok
cd -
