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


echo "Configurando o git..."
sleep 2

echo
echo "Configurando o nome de usuário..."
sleep 2
if git config --global user.name "Fabio Junior Ribeiro"
then
    echo "Sucesso!"
else
    echo "Falhou!"
fi

echo
echo "Configurando o email..."
sleep 2
if git config --global user.email "rib3iro@live.com"
then
    echo "Sucesso!"
else
    echo "Falhou!"
fi

echo
echo "Configurando o vim como editor padrão..."
sleep 2
if git config --global core.editor vim
then
    echo "Sucesso!"
else
    echo "Falhou!"
fi

echo
echo "Configurando o vimdiff..."
sleep 2
if git config --global core.editor vimdiff
then
    echo "Sucesso!"
else
    echo "Falhou!"
fi

echo
echo "Colorindo as cores na saída do git..."
sleep 2
git config --global color.ui auto
git config --global color.branch auto
git config --global color.status auto

echo
echo "Listando todas as configurações..."
sleep 2
echo
git config --list | more


