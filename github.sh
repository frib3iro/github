#!/usr/bin/env bash

# variaveis
P="\033[0;30m"
B="\033[0;34m"
G="\033[0;32m"
R="\033[0;31m"
Y="\033[0;33m"
S="\033[0;34m[+]\e[m"
F="\e[m"

lista=(archlinux gnome Bash bspwm ubuntu github debian vbz grub ssh testes MegaSena install archvirt cinnamon zshell plymouth i3wm shell-progressbar)

clear && cd /home/fabio

if [ -e GitHub ]
then
   echo -e "${S} ${Y}O diretório GitHub existe${F}"
   echo
   sleep 2
   cd GitHub
else
   echo -e "${S} ${Y}O diretório GitHub não existe e será criado${F}"
   echo
   sleep 2
   mkdir GitHub && cd GitHub
   echo -e "${S} ${G}Repositório GitHub criado com sucesso!${F}"
   echo
   sleep 2
fi

for i in ${lista[@]}
do
   if [ -d $i ]
   then
        echo -e "${S} ${Y}O repositório $i existe${F}"
        echo
        sleep 2
    else
        echo -e "${S} ${Y}Clonando o repositório $i ${F}"
        sleep 2
        git clone https://github.com/frib3iro/$i
        echo -e "${S} ${G}Repositório $i baixado com sucesso!!${F}"
        echo
        sleep 2
    fi
done

echo -e "${S} ${G}Clonagem dos repositórios finalizada com sucesso!${F}"
echo
