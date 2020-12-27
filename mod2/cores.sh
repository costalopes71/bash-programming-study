#! /usr/bin/env bash

# Texto com cores :)

RED="\e[91m"
YELLOW="\e[93m"
GREEN="\e[92m"
BLUE="\e[96m"
DEFAULT_COLOR="\e[0m"

echo -e "$RED essa é uma linha vermelha $DEFAULT_COLOR"

printf "$YELLOW essa é uma linha amarela $DEFAULT_COLOR \n"

printf "$BLUE essa é uma linha azul $DEFAULT_COLOR \n"

printf "$GREEN essa é uma linha verde $DEFAULT_COLOR \n"