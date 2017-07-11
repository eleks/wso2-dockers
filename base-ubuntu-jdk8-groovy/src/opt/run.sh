#!/bin/sh

# fail on error
set -eu
cd "$(dirname "$(readlink -f "$0")")"
BASEDIR=$PWD

# allow exec on ./bin/*
find ./ -type f -path "*/bin/*" -exec chmod 775 {} \;

if [ -z "$1" ]
	then
		COMMAND=help
else
	COMMAND="$1"
	shift
fi

groovy ./tools/classes/GCLI.groovy "$COMMAND" $*


if [ "$COMMAND" = "entrypoint" ]
	then
		"$ENTRYPOINT" $*
fi

