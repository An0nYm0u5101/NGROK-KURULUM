#!/bin/bash
if [[ -a $PREFIX/bin/ngrok ]];then
	rm $PREFIX/bin/ngrok
fi
mv ngrok $PREFIX/bin/ngrok
chmod 777 $PREFIX/bin/ngrok
echo
echo
echo
printf "\e[32m[✓]\e[1;97m NGROK KURULUM TANAMLANDI"
echo
echo
echo
cd ..
rm -rf NGROK
