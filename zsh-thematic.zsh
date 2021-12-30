#!/bin/bash
# Copyright (c) 2021 Leonardo Z. Nunes

MONTH=$(date +%b)
DAY=$(date +%d)

case $MONTH in
	"Jan")
	 	EMOJI="🎆"
		;;
	"Jun")
		EMOJI="🌈"
		;;
	"Dec")
		EMOJI="🎄"
		if [[ DAY > 25 ]]
		then
			EMOJI="🌟"
		fi 
  		;;
	*)
    		EMOJI="🐮"
		;;
esac

THEME="PROMPT=\"%(?:$EMOJI:💢)\"" 

sed -i "2s/.*/$THEME/" zsh-thematic.zsh-theme

cp zsh-thematic.zsh-theme $ZSH/themes/
