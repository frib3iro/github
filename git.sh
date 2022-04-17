#!/usr/bin/env bash
#----------------------------------------------------------------------
# Script    : [git.sh]
# Descrição :
# Versão    : 0.1
# Autor     : Fabio Junior Ribeiro <rib3iro@live.com>
# Github    : https://github.com/frib3iro 
# Data      : 17/12/2020
# Licença   : GNU/GPL v3.0
#----------------------------------------------------------------------
# Uso       :
#----------------------------------------------------------------------
# variaveis
B="\033[0;34m"
G="\033[0;32m"
Y="\033[0;33m"
S="\033[0;35m>>>\e[m"
F="\e[m"
#----------------------------------------------------------------------
clear

echo -e "${S} ${B}Configurando o git...${F}"
sleep 2

echo
echo -e "${S} ${B}Configurando o nome de usuário...${F}"
sleep 2
if git config --global user.name "Fabio Junior Ribeiro"
then
    echo -e "${S} ${G}Sucesso!${F}"
else
    echo -e "${S} ${R}Falhou!${F}"
fi

echo
echo -e "${S} ${B}Configurando o email...${F}"
sleep 2
if git config --global user.email "rib3iro@live.com"
then
    echo -e "${S} ${G}Sucesso!${F}"
else
    echo -e "${S} ${R}Falhou!${F}"
fi

echo
echo -e "${S} ${B}Configurando o vim como editor padrão...${F}"
sleep 2
if git config --global core.editor vim
then
    echo -e "${S} ${G}Sucesso!${F}"
else
    echo -e "${S} ${R}Falhou!${F}"
fi

echo
echo -e "${S} ${B}Configurando o vimdiff...${F}"
sleep 2
if git config --global core.editor vimdiff
then
    echo -e "${S} ${G}Sucesso!${F}"
else
    echo -e "${S} ${R}Falhou!${F}"
fi

echo
echo -e "${S} ${B}Colorindo as cores na saída do git...${F}"
sleep 2
git config --global color.ui auto
git config --global color.branch auto
git config --global color.status auto

echo
echo -e "${S} ${B}Listando todas as configurações...${F}"
sleep 2
echo
git config --list | more


