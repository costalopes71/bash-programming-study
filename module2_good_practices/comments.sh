#! /usr/bin/env bash

RED="\e[91m"
FINISHCOLOR="\e[0m"

# Docker instalado?
[ ! -x $(which docker) ] && echo "Docker não está instalado"

# Sem parâmetro obrigatório?
[ -z $1 ] && printf "$RED [ERRO] Informe os parâmetros obrigatórios. $FINISHCOLOR \n" && exit 1