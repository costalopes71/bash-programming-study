#! /usr/bin/env bash

# -------------------------------------------------------------
# VARIAVEIS
# -------------------------------------------------------------
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $(basename $0) - [OPÇÕES] 

    -h - Menu de ajuda
    -v - Versão
    -s - Ordenar a saída
"
VERSAO="v1.1"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0

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
  -h) echo "$MENSAGEM_USO" && exit 0 ;;
  -v) echo "$VERSAO" && exit 0       ;;
  -s) CHAVE_ORDENA=1                 ;;
  -m) CHAVE_MAIUSCULO=1              ;;
   *) echo "$USUARIOS"               ;;
esac

# echo "$USUARIOS"

[ $CHAVE_ORDENA -eq 1 ] && echo "$USUARIOS" | sort && exit 0
[ $CHAVE_MAIUSCULO -eq 1 ] && echo "$USUARIOS" | tr [a-z] [A-Z]
