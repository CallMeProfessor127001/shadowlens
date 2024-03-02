#!/bin/bash

red="\033[38;5;196m"
green="\033[38;5;82m"
yellow="\033[0;33m"
blue="\033[38;5;51m"
reset="\033[0m" # Reset color to default

clear

toilet -f mono12 -F metal -W "SHADOW_ LENS" | lolcat
sleep 1
echo -e "ANOTHER LENS WHICH SPECTATES YOUR TARGET FROM HIS DEVICE" | lolcat
cowsay -f dragon-and-cow PROFESSOR VISHAL professorvishal31@gmail.com | lolcat
sleep 3

while true; do
    expect <<EOF
    spawn bash lens.sh
    expect
    send "2\r"
    expect
    send "3\r"
    expect
    send "Y\r"
    expect
    send "\r"
    expect eof
    while {1} {
        expect -timeout -1
    }
EOF
    echo -e "\n"
    echo -e "\n${yellow}Saw their faces :) .. want to scan more targets?\n${reset}"
    echo -e "${green}1.CONTINUE${reset}"
    echo -e "${red}2.EXIT\n${reset}"
    python3 ai.py

    file_path="/opt/predatorshell/shadowlens/finger_count.txt"

    if grep -q "1" "$file_path"; then
        echo -e "${green}OK${reset}"
    elif grep -q "2" "$file_path"; then
        cowsay -f kiss COME BACK SOON !!! | lolcat
        break
    else
        echo "${red}INVALID OPTION ! ${reset}"
        break
    fi

    sleep 5.5

    echo -e "${reset}"

done
