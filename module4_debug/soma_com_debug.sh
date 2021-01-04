#! /usr/bin/env bash

#####################################################
# VARIAVEIS
#####################################################
NIVEL_DEBUG=0

#####################################################
# FUNCOES
#####################################################

Soma() {

    local total=0

    for i in $( seq 1 25 )
    do
        Debug 1 "Entrei no for com o valor: $i"
        total=$(( $total + $i ))
        Debug 2 "Depois da soma: $total"
    done

    echo "Resultado da soma: $total"

}

Debug() {
    [ $1 -le $NIVEL_DEBUG ] && echo "Debug $* ------"
}

#####################################################
# EXECUCAO
#####################################################

case $1 in
    -d) [ $2 ] && NIVEL_DEBUG=$2 ;;
esac

Soma