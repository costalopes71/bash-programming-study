#! /usr/bin/env bash

#######################################################
# VARIABLES
#######################################################

CONF_FILE="configuration.cf"
COLORS_FLAG=0
UPPERCASE_FLAG=0
MESSAGE="Test message"

RED="\033[31;1m"
GREEN="\033[32;1m"

#######################################################
# EXECUTION
#######################################################

eval $( ./generic_parser.sh $CONF_FILE )

[ "$CFG_COLORS_FLAG" = "1" ] && COLORS_FLAG=1
[ "$CFG_UPPERCASE_FLAG" = "1" ] && UPPERCASE_FLAG=1

[ $UPPERCASE_FLAG -eq 1 ] && MESSAGE="$( echo -e $MESSAGE | tr [a-z] [A-Z] )"
[ $COLORS_FLAG -eq 1 ] && MESSAGE="$( echo ${GREEN}$MESSAGE )"

echo -e "$MESSAGE"
