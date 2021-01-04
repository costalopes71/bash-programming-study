#! /usr/bin/env bash

VAR_GLOBAL="Esta é uma variável global.
Estou usando formatação nela,
mais especificamente estou quebrando linhas."

echo -e "Imprimir sem uso de aspas:"
echo $VAR_GLOBAL

echo -e "\nImprimindo com formatação:"
echo "$VAR_GLOBAL"

NUM_1=10
NUM_2=5

TOTAL=$(($NUM_1+$NUM_2))

echo -e "\nFazendo operacoes matematicas:" $TOTAL

echo -e "\nComandos podem ser atribuídos a variáveis:"

OUT_CAT="$(cat /etc/passwd | grep developer)"

echo "$OUT_CAT"

echo -e "\n----------------------------------------------------"
echo "Variaveis reservadas - aula 2"
echo -e "----------------------------------------------------\n"

echo "Parametro 1:" $1
echo "Parametro 2:" $2
echo "Todos os parametros:" $*
echo "Qtd de parametros:" $#
echo "Numero do PID:" $$
echo "Saida do ultimo cmd:" $?
echo "Nome do scrip sendo executado:" $0
