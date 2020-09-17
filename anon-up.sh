#!/bin/bash
# tools sederhana fungsi buat mengupload sebuah file gak tau nih banyak soalnya xD
# karya widhisec support me :)
request(){
	req=$(curl -s "https://anonfile.com")
token=$(echo -e "$req" | grep "X-CSRF-Token" | gawk '{ print $3 }' | gawk -F "}}" '{print $1}' | tr -d "''")
	   oaoax00x0=$(curl --url 'https://api.anonfile.com/upload' -H 'origin: https://anonfile.com' -H "x-csrf-token: $token" -F "file=@${fl3}" -s)
	  short=$(echo $oaoax00x0 | grep -Po '(?<="short":)(.*?)(?=})' | tr -d '""') 
       echo -e "\033[0;36m[\033[0;33m*\033[0;33m]\033[0;36m output : ${short}"
}

echo -e "
\t\033[0;34m #                       ____     _                                 _       __
\t\033[0;34m# _______  ___  ___ ___ / _ \ \033[0;36m __| | ___        ___ ___ __ _____    _(_) __| |#
\t\033[0;34m#|_  / __|/ _ \/ __/ __| | | |\033[0;36m/ _  |/ _ \_____ / __| '__/ _ \ \ /\ / / |/ _  |#
\t\033[0;34m# / /\__ \  __/ (_| (__| |_| |\033[0;36m (_| |  __/_____| (__| | |  __/\ V  V /| | (_| |#
\t\033[0;34m#/___|___/\___|\___\___|\___/ \033[0;36m\__,_|\___|      \___|_|  \___| \_/\_(_)_|\__,_|#
                                   \033[1;37m[ \033[0;32manonfile uploader\033[1;37m ]
"
echo -n "!(file :"; read fl3
printf "%s" `request`
