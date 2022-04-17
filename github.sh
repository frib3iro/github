#!/usr/bin/env bash

# variaveis --------------------------------------------
b='\e[30m'
R='\e[31m'
G='\e[32m'
Y='\e[33m'
B='\e[34m'
P='\e[35m'
C='\e[36m'
W='\e[37m'
S='\e[35m>>>\e[m'

F='\e[m'
LOG=erro.txt
# ------------------------------------------------------

lista=(arch archlinux archlinuxMBR bspwm cinnamon curso-java-basico debian github grub i3wm Java JavaGame_DoomFire MegaSena plymouth Scripts Snake ssh vbz zsh)

clear && cd /home/fabio

if [ -e Github ]
then
   echo -e "${S} ${B}O diretório Github existe${F}"
   echo
   cd Github
else
   echo -e "${S} ${B}O diretório Github não existe e será criado${F}"
   echo
   mkdir Github && cd Github
   echo -e "${S} ${G}Repositório Github criado com sucesso!${F}"
   echo
fi

for i in ${lista[@]}
do
   if [ -d $i ]
   then
        echo -e "${S} ${B}O repositório $i existe${F}"
        echo
    else
        echo -e "${S} ${B}Clonando o repositório $i ${F}"
        git clone https://github.com/frib3iro/$i
        echo -e "${S} ${G}Repositório $i clonado com sucesso!!${F}"
        echo
        
    fi
done

echo -e "${S} ${G}Clonagem dos repositórios finalizada com sucesso!${F}"
echo
