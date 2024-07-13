#! /bin/sh

# Regex for converting full author/editor names in refer databases into APA format

if [ -z "$1" ]
then
	echo "No database file specified."
	exit 1
fi

sed "/\%A/s/, \(\w\)\(\w*\|\w*-\w*\|\.\)/, \1\./g;/\%A/s/\(\w\)\(\w*$\|\w*-\w*$\|\.$\)/\1\./g;/\%E/s/, \(\w\)\(\w*\|\w*-\w*\|\.\)/, \1\./g;/\%E/s/\(\w\)\(\w*$\|\w*-\w*$\|\.$\)/\1\./g" $1
