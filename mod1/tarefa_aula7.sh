#! /usr/bin/env bash

PARAM1=$1
QTDPARAMS=$#

if [ $QTDPARAMS -lt 1 ]; then
  echo "ERRO: o comando deve conter ao menos 1 (um) parâmetro"
  exit 1
fi

# -x file  : retorna true se o arquivo tem permissao de escrita
[ -x $0 ] && echo "Tem permissao de escrita"

[ $PARAM1 -gt 10 ] && echo "Script:" $0 " PID:" $$