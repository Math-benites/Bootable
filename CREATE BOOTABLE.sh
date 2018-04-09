#!/bin/bash

sudo su
W='\033[1;33m'
NC='\033[0m'
printf "Insira o nome do arquivo localizado na pasta Downloads ${W}( Ex:Win7.iso)${NC} \n"
read iso
lsblk -a --output NAME,SIZE,TYPE
W='\033[1;33m'
NC='\033[0m'
printf "Digite o caminho final da unidade ${W}/dev/...${NC} \n"
read sdb
dd if=/home/$USER/Downloads/$iso | pv | dd of=/dev/$sdb bs=2M
