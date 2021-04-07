#!/bin/bash
control=$(which unzip |wc -l)
if [[ $control == 0 ]];then
	echo
	echo
	echo
	printf "\e[32m[*]\e[97m UNZİP PAKETİ KURULUYOR"
	echo
	echo
	echo
	pkg install unzip -y
fi
control=$(which wget |wc -l)
if [[ $control == 0 ]];then
	echo
	echo
	echo
	printf "\e[32m[*]\e[97m WGET PAKETİ KURULUYOR"
	echo
	echo
	echo
	pkg install wget -y
fi
control=$(which php |wc -l)
if [[ $control == 0 ]];then
	echo
	echo
	echo
	printf "\e[32m[*]\e[97m PHP PAKETİ KURULUYOR"
	echo
	echo
	echo
	pkg install php -y
fi
_delete() {
if [[ -a $PREFIX/bin/ngrok ]];then
	rm $PREFIX/bin/ngrok
fi
}
_test() {
killall ngrok
killall php
sleep 2
port="4988"
php -S 127.0.0.1:$port & ngrok http $port > /dev/null &
clear
echo
echo
echo
printf "\e[33m
        +-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+

                  \e[97mNGROK TEST EDİLİYOR..

	          LÜTFEN BEKLEYİNİZ...\e[33m


	+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+\e[97m"
echo
echo
close(){
control=$(ngrok version |wc -l)
if [[ $control == 1 ]];then
	version="true"
else
	version="false"
fi
}
end=$((SECONDS+15))
while [ $SECONDS -lt $end ];
do
	url=$(curl -s http://127.0.0.1:4040/api/tunnels |grep -o \"https://[a-z.0-9.A-Z.]\*.ngrok.io\" |tr -d '"' |wc -l)
done
killall ngrok
killall php
clear
echo
echo
echo
echo
echo
echo
if [[ $url == 1 ]];then
	printf "\e[33m
	+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+

	          NGROK TEST EDİLDİ..
	
 	         \e[97mSONUÇ : \e[32m[✓] BAŞARILI\e[33m

	+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+\e[97m"
	exit
else
	printf "\e[33m
	+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+

	          NGROK TEST EDİLDİ..
	
 	         \e[97mSONUÇ : \e[31m[!] BAŞARISIZ\e[33m

	+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+\e[97m"
fi
echo
echo
echo
echo
echo
echo
}
_banner() {
clear
printf "

███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗
████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝
██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ 
██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ 
██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗
╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝
\e[32m                                            
██╗  ██╗██╗   ██╗██████╗ ██╗   ██╗██╗     ██╗   ██╗███╗   ███╗
██║ ██╔╝██║   ██║██╔══██╗██║   ██║██║     ██║   ██║████╗ ████║
█████╔╝ ██║   ██║██████╔╝██║   ██║██║     ██║   ██║██╔████╔██║
██╔═██╗ ██║   ██║██╔══██╗██║   ██║██║     ██║   ██║██║╚██╔╝██║
██║  ██╗╚██████╔╝██║  ██║╚██████╔╝███████╗╚██████╔╝██║ ╚═╝ ██║
╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚══════╝ ╚═════╝ ╚═╝     ╚═╝\e[97m

            \e[1;4;31m# Coded By UmuT KaRa #\e[0;1;97m

\e[31m ──────────  \e[97mNgrok Version 2.2.8  \e[31m ──────────

\e[31m ──────────  \e[97mNgrok Version 2.2.6  \e[31m ──────────

\e[31m ──────────  \e[97mNgrok Güncel Version \e[31m ──────────\e[1;32m


 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+\e[1;97m

 3 ADET NGROK VERSİONU

 TEK TEK OTOMATİK OLARAK KURULUP TEST EDİLECEK

 1 TANESİ BAŞARILI OLURSA SCRİPT SONLANACAKTIR...\e[1;32m

 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+\e[1;97m
 "
echo
echo
echo
echo
echo
sleep 10
}
_banner
cd files
_2_2_8() {
	_delete
	cd ngrok-2-2-8
	cp ngrok $PREFIX/bin/ngrok
	chmod 777 $PREFIX/bin/ngrok
	echo
	echo
	echo
	printf "\e[32m[✓]\e[1;97m NGROK \e[33mVERSİON 2.2.8\e[97m KURULUM TANAMLANDI"
	echo
	echo
	echo
	sleep 2
	cd ..
	_test
}
_2_2_6() {
	_delete
	unzip ngrok-2_2_6.zip
	mv ngrok_2_2_6 $PREFIX/bin/ngrok
	chmod 777 $PREFIX/bin/ngrok
	echo
	echo
	echo
	printf "\e[32m[✓]\e[1;97m NGROK \e[33mVERSİON 2.2.6\e[97m KURULUM TANAMLANDI"
	echo
	echo
	echo
	sleep 2
	_test
}
_guncel() {
	_delete
	wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm64.zip
	unzip ngrok-stable-linux-arm64.zip
	rm ngrok-stable-linux-arm64.zip
	mv ngrok $PREFIX/bin/ngrok
	chmod 777 $PREFIX/bin/ngrok
	echo
	echo
	echo
	printf "\e[32m[✓]\e[1;97m NGROK \e[33mGÜNCEL VERSİON\e[97m KURULUM TANAMLANDI"
	echo
	echo
	echo
	sleep 2
	_test
}
_2_2_8
_2_2_6
_guncel

