#!/bin/bash

SCRIPT_DIR=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

echo "Please enter the Intellij version"
read version

for f in $SCRIPT_DIR/*.xml
do
	if [[ "$system" == 'Linux' ]]; then
		cp $f ~\.IntelliJIdea$version\config\templates
	else
		cp $f ~/Library/Preferences/IntelliJIdea$version/templates
	fi
done

