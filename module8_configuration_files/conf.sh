#! /usr/bin/env bash

#######################################################
# VARIABLES
#######################################################

CONF_FILE="configuration.cf"
COLORS_FLAG=
UPPERCASE_FLAG=
MESSAGE="Test message"

RED="\033[31;1m"
GREEN="\033[32;1m"

#######################################################
# TESTS
#######################################################

[ ! -r "$CONF_FILE" ] && echo -e "${RED}No read permission on configuration.cf file" && exit 1


#######################################################
# FUNCTIONS
#######################################################

ParseFlags() {
	
	local flag="$( echo $1 | cut -d = -f 1 )"
	local value="$( echo $1 | cut -d = -f 2 )"

	case "$flag" in
		COLORS_FLAG)    COLORS_FLAG="$value"    ;;
		UPPERCASE_FLAG) UPPERCASE_FLAG="$value" ;;
	esac

}

#######################################################
# EXECUTION
#######################################################

while read -r line
do
	[ "$( echo $line | cut -c1 )" = "#" ] && continue
	[ ! "$line" ] && continue
	ParseFlags "$line"
done < "$CONF_FILE"

echo "Valor colors: $COLORS_FLAG"
echo "Valor uppercase: $UPPERCASE_FLAG"
