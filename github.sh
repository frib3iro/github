#!/usr/bin/env bash

# variaveis
B="\033[0;34m"
G="\033[0;32m"
Y="\033[0;33m"
S="\033[0;34m[+]\e[m"
F="\e[m"

lista=(archlinux debian bspwm archlinuxMBR ssh github vbz Java gnome frib3iro JavaGame_DoomFire Snake curso-java-basico Bash archvirt grub MegaSena cinnamon zshell plymouth i3wm shell-progressbar)

clear && cd /home/fabio

if [ -e Github ]
then
   echo -e "${S} ${Y}O diretório Github existe${F}"
   echo
   cd Github
else
   echo -e "${S} ${Y}O diretório Github não existe e será criado${F}"
   echo
   mkdir Github && cd Github
   echo -e "${S} ${G}Repositório Github criado com sucesso!${F}"
   echo
fi

for i in ${lista[@]}
do
   if [ -d $i ]
   then
        echo -e "${S} ${Y}O repositório $i existe${F}"
        echo
    else
        echo -e "${S} ${Y}Clonando o repositório $i ${F}"
        git clone https://github.com/frib3iro/$i
        echo -e "${S} ${G}Repositório $i clonado com sucesso!!${F}"
        echo
        
    fi
done

echo -e "${S} ${G}Clonagem dos repositórios finalizada com sucesso!${F}"
echo
