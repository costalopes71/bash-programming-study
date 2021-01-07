#! /usr/bin/env bash

###################################################
# VARIABLES
###################################################

PURPLE_BOLD="\033[035;1m"
CIAN_BOLD="\033[036;1;5m"
DEFAULT_COLOR="\e[0m"

DEBUG_LEVEL=0

###################################################
# FUNCTIONS
###################################################

Debugar() {
  [ $1 -le $DEBUG_LEVEL ] && echo -e "${2}Debug $* ------$DEFAULT_COLOR"
}

Soma() {
  
  local total=0

  for i in $( seq 0 25 )
  do
    Debugar 1 "$PURPLE_BOLD" "Entrei no for com o valor: $i"
    total=$(( $total + $i  ))
    Debugar 2 "$CIAN_BOLD" "Depois da soma: $total"
  done

}

###################################################
# EXECUTION
###################################################

case $1 in
  -d) [ $2 ] && DEBUG_LEVEL=$2 ;;
esac

Soma
