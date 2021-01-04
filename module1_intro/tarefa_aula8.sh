#! /usr/bin/env bash

echo -e "Tarefa: Uma laço que conte de 0 até 10 e a cada iteração verifique se o número é divível por 2. Se for divível escreva uma mensagem na tela confirmando isso.\n"

for i in $(seq 0 10)
do
  [ $(( $i % 2 )) -eq 0 ] && echo "$i" "é divisível por 2"
done

echo -e "\nSegunda maneira de fazer:"

for (( i = 0; i <= 10; i++ ))
do
  [ $(( $i % 2 )) -eq 0 ] && echo "$i" "é divisível por 2"
done

echo -e "\nTerceira forma de fazer:"

CONTADOR=0

while [ $CONTADOR -le 10 ]
do
  [ $(($CONTADOR % 2)) -eq 0 ] && echo "$CONTADOR" "é divisível por 2"
  CONTADOR=$(($CONTADOR+1))
done
