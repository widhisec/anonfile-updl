#!/bin/bash
# AUTO DOWNLOADER FILE BY WIDHISEC
# MYINSTAGRAM : instagram.com/widhisec
agent='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36'
RED=$(tput setaf 1) #MERAH
WHITE=$(tput setaf 7) #PUTIH
clear;
function bnere(){
shuf -e "
 ********* ${RED}auto downloader anonfile.com ********* ${WHITE}
                   [By widhisec]
"
}
bnere
function auss(){
             vos=$(curl --silent -A 'user-agent: $agent ' "$urls" \
               -H 'host: anonfile.com'  \
               -H 'upgrade-insecure-requests: 1' \
               -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' --compressed |  gawk '{ print $1 }')
             oes=$(echo $vos | sed -n 's/.*href="\([^"]*\).*/\1/p' | grep 'cdn')
             oao=$(wget $oes --show-progress -q -O $f)
             echo -e "$oes"
}
read -p "URL :" urls
read -p "FILE SAVE : " f
auss