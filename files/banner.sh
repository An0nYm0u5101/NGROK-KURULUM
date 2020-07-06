#!/bin/bash

#################### GÜNLER ####################

pazartesi=$(date |grep -o Mon)
sali=$(date |grep -o Tue)
carsamba=$(date |grep -o Wed)
persembe=$(date |grep -o Thu)
cuma=$(date |grep -o Fri)
cumartesi=$(date |grep -o Sat)
pazar=$(date |grep -o Sun)

#################### GÜNLERE GÖRE RENKLER ####################

if [[ $pazartesi == Mon ]];then
	renk1='\e[0m'
	renk2='\e[32m'
elif [[ $sali == Tue ]];then
	renk1='\e[0m'
	renk2='\e[31m'
elif [[ $carsamba == Wed ]];then
	renk1='\e[0m'
	renk2='\e[33m'
elif [[ $persembe == Thu ]];then
	renk1='\e[0m'
	renk2='\e[34m'
elif [[ $cuma == Fri ]];then
	renk1='\e[0m'
	renk2='\e[36m'
elif [[ $cumartesi == Sat ]];then
	renk1='\e[31m'
	renk2='\e[34m'
elif [[ $oazar == Sun ]];then
	renk1='\e[33m'
	renk2='\e[34m'
fi

#################### BANNER ####################

printf "
$renk1
 _______ _______  ______ _______ _     _ _     _
    |    |______ |_____/ |  |  | |     |  \___/
    |    |______ |    \_ |  |  | |_____| _/   \_
$renk2
                 _______  ______ _____ _______ _____ _______
                 |______ |  ____   |      |      |   |  |  |
                 |______ |_____| __|__    |    __|__ |  |  |




\e[32m[✓]$renk1 NGROK KURULUM TAMAMLANDI.
\e[0m
"
