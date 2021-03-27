#!/usr/bin/env bash

# variaveis
B="\033[0;34m"
G="\033[0;32m"
Y="\033[0;33m"
S="\033[0;34m[+]\e[m"
F="\e[m"

lista=(archlinux gnome Bash bspwm ubuntu github debian vbz grub ssh testes MegaSena install archvirt cinnamon zshell plymouth i3wm shell-progressbar)

clear && cd /home/fabio

if [ -e GitHub ]
then
   echo -e "${S} ${Y}O diretório GitHub existe${F}"
   echo
   cd GitHub
else
   echo -e "${S} ${Y}O diretório GitHub não existe e será criado${F}"
   echo
   mkdir GitHub && cd GitHub
   echo -e "${S} ${G}Repositório GitHub criado com sucesso!${F}"
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
