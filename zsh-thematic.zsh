#!/bin/bash
# Copyright (c) 2021 Leonardo Z. Nunes

MONTH=$(date +%b)
DAY=$(date +%d)

case $MONTH in
	"Jan") # HAPPY NEW YEAR
	 	EMOJI="🎆"
		;;
	"Jun") # PRIDE MONTH
		EMOJI="🌈"
		;;
	"Dec") # MARRY CHRISTMAS
		EMOJI="🎄"
		if [[ DAY > 25 ]] # HAPPY NEW YEAR
		then
			EMOJI="🌟"
		fi 
  		;;
	*)
    		EMOJI="🐮"
		;;
esac

THEME="PROMPT=\"%(?:$EMOJI:💢)\"" 

sed -i "2s/.*/$THEME/" ${0:A:h}/zsh-thematic.zsh-theme

cp ${0:A:h}/zsh-thematic.zsh-theme $ZSH/themes/
