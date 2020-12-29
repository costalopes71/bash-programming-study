#! /usr/bin/env bash

USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $0 - [OPÇÕES] 

  -h - Menu de ajuda
  -v - Versão
  -s - Ordenar a saída
"

VERSAO="v1.0"

echo "$USUARIOS"