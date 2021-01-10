#!/usr/bin/env bash

# variaveis
azul='\e[34;1m'
verde='\e[32;1m'
vermelho='\e[31;1m'
amarelo='\e[33;1m'
seta='\e[32;1m--->\e[m'
fim='\e[m'

clear && cd /home/fabio

if [ -d GitHub ]; then
    rm -rf GitHub
    echo -e "${azul}Criando repositório GitHub${fim}"
    mkdir GitHub && cd GitHub
    echo -e "${verde}Sucesso!${fim}"
else
    echo -e "${azul}Criando repositório GitHub${fim}"
    mkdir GitHub && cd GitHub
    echo -e "${verde}Sucesso!${fim}"
fi
echo

echo -e "${azul}Baixando o archlinux${fim}"
sleep 2s
if git clone https://github.com/frib3iro/archlinux
then
    echo -e "${verde}Sucesso!${fim}"
else
    echo -e "${vermelho}Falhou!${fim}"
    exit 1
fi
echo

echo -e "${azul}Baixando o vbz${fim}"
sleep 2s
if git clone https://github.com/frib3iro/vbz
then
    echo -e "${verde}Sucesso!${fim}"
else
    echo -e "${vermelho}Falhou!${fim}"
    exit 1
fi
echo

echo -e "${azul}Baixando o zshell${fim}"
sleep 2s
if git clone https://github.com/frib3iro/zshell
then
    echo -e "${verde}Sucesso!${fim}"
else
    echo -e "${vermelho}Falhou!${fim}"
    exit 1
fi
echo

echo -e "${azul}Baixando o gnome${fim}"
sleep 2s
if git clone https://github.com/frib3iro/gnome
then
    echo -e "${verde}Sucesso!${fim}"
else
    echo -e "${vermelho}Falhou!${fim}"
    exit 1
fi
echo

echo -e "${azul}Baixando o bin${fim}"
sleep 2s
if git clone https://github.com/frib3iro/bin
then
    echo -e "${verde}Sucesso!${fim}"
else
    echo -e "${vermelho}Falhou!${fim}"
    exit 1
fi
echo

echo -e "${azul}Baixando o bspwm${fim}"
sleep 2s
if git clone https://github.com/frib3iro/bspwm
then
    echo -e "${verde}Sucesso!${fim}"
else
    echo -e "${vermelho}Falhou!${fim}"
    exit 1
fi
echo

echo -e "${azul}Baixando o ssh${fim}"
sleep 2s
if git clone https://github.com/frib3iro/ssh
then
    echo -e "${verde}Sucesso!${fim}"
else
    echo -e "${vermelho}Falhou!${fim}"
    exit 1
fi
echo

echo -e "${azul}Baixando o ubuntu${fim}"
sleep 2s
if git clone https://github.com/frib3iro/ubuntu
then
    echo -e "${verde}Sucesso!${fim}"
else
    echo -e "${vermelho}Falhou!${fim}"
    exit 1
fi
echo

echo -e "${azul}Baixando o github${fim}"
sleep 2s
if git clone https://github.com/frib3iro/github
then
    echo -e "${verde}Sucesso!${fim}"
else
    echo -e "${vermelho}Falhou!${fim}"
    exit 1
fi
echo

echo -e "${azul}Baixando o archvirt${fim}"
sleep 2s
if https://github.com/frib3iro/archvirt.git
then
    echo -e "${verde}Sucesso!${fim}"
else
    echo -e "${vermelho}Falhou!${fim}"
    exit 1
fi
echo

echo -e "${azul}Baixando Mega-Sena${fim}"
sleep 2s
if https://github.com/frib3iro/MegaSena.git
then
    echo -e "${verde}Sucesso!${fim}"
else
    echo -e "${vermelho}Falhou!${fim}"
    exit 1
fi
echo

