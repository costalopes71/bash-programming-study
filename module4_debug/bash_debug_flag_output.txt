#! /usr/bin/env bash

# -------------------------------------------------------------
# VARIAVEIS
# -------------------------------------------------------------
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
++ cat /etc/passwd
++ cut -d : -f 1
+ USUARIOS='root
...
joao
...'
MENSAGEM_USO="
  $(basename $0) - [OPÇÕES]

    -h - Menu de ajuda
    -v - Versão
    -s - Ordenar a saída
"
++ basename chaves_flag_mod4.sh
+ MENSAGEM_USO='
  chaves_flag_mod4.sh - [OPÇÕES]

    -h - Menu de ajuda
    -v - Versão
    -s - Ordenar a saída
'
VERSAO="v1.3"
+ VERSAO=v1.3
CHAVE_ORDENA=0
+ CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0
+ CHAVE_MAIUSCULO=0

# -------------------------------------------------------------
# TESTES
# -------------------------------------------------------------


# -------------------------------------------------------------
# EXECUCAO
# -------------------------------------------------------------

while test -n "$1"
do
  case "$1" in
    -h) echo "$MENSAGEM_USO" && exit 0                      ;;
    -v) echo "$VERSAO" && exit 0                            ;;
    -s) CHAVE_ORDENA=1                                      ;;
    -m) CHAVE_MAIUSCULO=1                                   ;;
     *) echo "Opção inválida, use -h para ajuda." && exit 1 ;;
  esac
  shift
done
+ test -n ''

[ $CHAVE_ORDENA -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | sort )
+ '[' 0 -eq 1 ']'
[ $CHAVE_MAIUSCULO -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | tr [a-z] [A-Z] )
+ '[' 0 -eq 1 ']'

echo "$USUARIOS"
+ echo 'root
...
joao
...'