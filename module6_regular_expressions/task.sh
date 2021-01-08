#! /usr/bin/env bash

# Para este exercício liste todos os grupos do seu Linux e faca as seguintes Expressões Regulares:
#   Grupos que começam com a letra "r" no arquivo /etc/group
#   Grupos que terminem com a letra "t"
#   Grupos que comecem com a letra "r" e terminem com a letra "t"
#   Grupos que terminam com a letra "e" ou "d"
#   Grupos que não terminam com a letra "e" ou "d"
#   Grupos que começam com qualquer dígito e a segunda letra seja um "u" ou "d"
#   Grupos que tenha seu nome de 2 a 4 dígitos de tamanho
#   Grupos que comecem com "r" ou "s" (use o operador OR)

GROUPS_VAR="$( cut -d: -f1 /etc/group )"

STARTING_WITH_R=$( echo "$GROUPS_VAR" | grep "^r" )

echo -e "STARTING WITH R:\n$STARTING_WITH_R"

FINISHING_WITH_T=$( echo "$GROUPS_VAR" | grep "t$" )

echo -e "\nFINISHING WITH T:\n$FINISHING_WITH_T"

START_R_FINISH_T=$( echo "$GROUPS_VAR" | grep "^r.*t$" )

echo -e "\nSTARTS WITH R AND FINISHS WITH T\n$START_R_FINISH_T"

FINISH_E_OR_D=$( echo "$GROUPS_VAR" | grep "[ed]$" )

echo -e "\nFINISHS WITH E OR D\n$FINISH_E_OR_D"

NOT_FINISH_E_OR_D=$( echo "$GROUPS_VAR" | grep "[^ed]$" )

echo -e "\nDO NOT FINISHS WITH E OR D\n$NOT_FINISH_E_OR_D"

ANY_CHAR_AND_U_OR_D=$( echo "$GROUPS_VAR" | grep "^.[ud]" )

echo -e "\nSTARTS WITH ANY CHAR AND SECOND LETTER IS U OR D:\n$ANY_CHAR_AND_U_OR_D" 

WITH_2_TO_4_CHARS=$( echo "$GROUPS_VAR" | grep -E "^.{2,4}$" )

echo -e "\nGROUPS WITH 2 TO 4 CHARS:\n$WITH_2_TO_4_CHARS"

STARTS_WITH_R_OR_S=$( echo "$GROUPS_VAR" | grep -E "^r|^s" )

echo -e "\nSTARTS WITH R OR S:\n$STARTS_WITH_R_OR_S"
