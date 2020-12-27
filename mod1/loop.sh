#! /usr/bin/env bash

echo "Existem pelo menos 4 maneiras para fazer loops"

echo -e "\nManeira 1:"

for (( i = 0; i < 10; i++ ))
do
  echo $i
done

echo -e "\nManeira2:"

for i in $(seq 10)
do
  echo $i
done

echo -e "\nIterando em arrays"

FRUTAS=(
'Laranja'
'Ameixa'
'Banana'
'Jabuticaba'
)

for i in ${FRUTAS[@]}
do
  echo $i
done

echo -e "\nUsando while:"

CONTADOR=0

while [[ CONTADOR -lt ${#FRUTAS[@]} ]]
do
  echo $CONTADOR
  CONTADOR=$(( $CONTADOR + 1 ))
done

