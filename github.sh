#!/usr/bin/env bash

clear
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
# ------------------------------------------------------

lista=(archlinux awesome bspwm cinnamon curso-java-basico dwm github grub i3wm Java JavaGame_DoomFire lightdm megasena plymouth scripts slackware Snake ssh vbz zsh)

if [ -e Github ]
then
   echo -e "${S} ${B}O diretório Github existe e sera excluido${F}"
   rm -rf Github
   echo
else
   echo -e "${S} ${B}Criando o repositorio Github${F}"
   echo
   mkdir Github && cd Github
   echo -e "${S} ${G}Repositório Github criado com sucesso!${F}"
   echo
fi

for i in ${lista[@]}; do
   if [ -d $i ]; then
        echo -e "${S} ${B}O repositório $i existe e sera excluido${F}"
        rm -rf $i
        echo
    else
        echo -e "${S} ${B}Clonando o repositório $i ${F}"
        git clone https://github.com/frib3iro/$i
        echo -e "${S} ${G}Repositório $i clonado com sucesso!!${F}"
        echo
        
    fi
done

echo -e "${S} ${G}Clonagem dos repositórios finalizada com sucesso!${F}"
