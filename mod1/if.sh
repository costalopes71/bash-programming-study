#! /usr/bin/env bash

echo -e "Existem várias formas de fazer um if, seguem algumas:\n"

VAR1=""
VAR2=""

if [[ "$VAR1" = "$VAR2" ]]; then
  echo "São iguais."
fi

if [[ "$VAR1" = "$VAR2" ]]
then
  echo "São iguais."
fi

if [ "$VAR1" = "$VAR2" ]; then
  echo "São iguais"
fi

if [ "$VAR1"="$VAR2" ]
then
  echo "São iguais."
fi

if test "$VAR1" = "$VAR2"
then
  echo "São iguais."
fi

echo -e "\nCaso tenha apenas um comando dentro do if, o if pode ser feito de uma maneira mais limpa\n"

[ "$VAR1" = "$VAR2" ] && echo "São iguais"

VAR1="a"

[ "$VAR1" = "$VAR2" ] || echo "São diferentes"

echo -e "\nO operador && testa true e o operador || testa false"

