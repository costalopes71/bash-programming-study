#! /usr/bin/env bash

USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $(basename $0) - [OPÇÕES] 

    -h - Menu de ajuda
    -v - Versão
    -s - Ordenar a saída
"

VERSAO="v1.1"

# -------------------------------------------------------------
# TESTES
# -------------------------------------------------------------


# -------------------------------------------------------------
# EXECUCAO
# -------------------------------------------------------------

# [ "$1" = "-h" ] && echo "$MENSAGEM_USO" && exit 0
# [ "$1" = "-v" ] && echo "$VERSAO" && exit 0
# [ "$1" = "-s" ] && echo "$USUARIOS" | sort && exit 0

case "$1" in 
  -h) echo "$MENSAGEM_USO" && exit 0       ;;
  -v) echo "$VERSAO" && exit 0             ;;
  -s) echo "$USUARIOS" | sort && exit 0    ;;
   *) echo "$USUARIOS"                     ;;
esac

# echo "$USUARIOS"