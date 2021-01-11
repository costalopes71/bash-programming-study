#! /usr/bin/env bash

############################################
# VARIABLES
############################################

CONF_FILE="$1"


############################################
# TESTS
############################################

[ ! -e "$CONF_FILE" ] && echo "[ERROR] Configuration file do not exist." && exit 1
[ ! -r "$CONF_FILE" ] && echo "[ERROR] Configuration file do not have read permission." && exit 1

############################################
# EXECUTION
############################################

while read -r line
do
  [ ! "$line" ] && continue
  [ "$( echo $line | cut -c1 )" = "#" ] && continue

  flag="$( echo $line | cut -d = -f 1 )"
  value="$( echo $line | cut -d = -f 2 )"

  echo "CFG_$flag=$value"

done < "$CONF_FILE"
