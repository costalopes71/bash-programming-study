#! /usr/bin/env bash

#################################################
# VARIABLES
#################################################

YELLOW="\033[33m"
RED="\033[31m"
GREEN="\033[32m"
DEFAULT_COLOR="\e[0m"
TITLES_FILE="titles.txt"

#################################################
# TESTS
#################################################

[ ! -x "$( which curl )" ] && echo -e "$YELLOW[WARN] curl dependencie not installed.\nInstalling curl:$DEFAULT_COLOR" && sudo apt install curl -y

#################################################
# EXECUTION
#################################################

TITLES_DIV="$( curl -s http://lxer.com | grep blurb )"

echo "$TITLES_DIV" | sed 's/<div class.*line">//;s/<\/span>.*//' > "$TITLES_FILE"


while read -r titulo_lxer
do
    echo -e "${RED}Titulo: ${GREEN}$titulo_lxer"
done < "$TITLES_FILE"

rm "$TITLES_FILE"