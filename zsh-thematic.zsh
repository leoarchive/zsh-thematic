#!/bin/bash
# Zsh thematic 

# Copyright (c) 2021 Leonardo Z. Nunes

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

MONTH=$(date +%b)
DAY=$(date +%d)

case $MONTH in
	"Jan") # HAPPY NEW YEAR
	 	EMOJI="🎆"
		;;
	"Feb") # BIRD-FEEDING MONTH
		EMOJI="🦆"
		;;
	"Mar") # WOMEN'S HISTORY
		EMOJI="🧚"
		;;
	"Apr") # MATH MONTH
		EMOJI="📐"
		;;
	"May") # PET MONTH
		EMOJI="🐶"
		;;
	"Jun") # PRIDE MONTH
		EMOJI="🌈"
		;;
	"Jul") # ICE CREAM MONTH
		EMOJI="🍦"
		;;
	"Sep") # SCIENCE MONTH
		EMOJI="🧬"
		;;
	"Oct") # HALLOWEEN
		EMOJI="🎃"
		;; 
	"Nov") # BLACK AWARENESS DAY
		EMOJI="✊🏿"
		;;
	"Dec") # MARRY CHRISTMAS
		EMOJI="🎄"
		if [[ DAY > 25 ]] # HAPPY NEW YEAR
		then
			EMOJI="🌟"
		fi 
  		;;
	*) # GNU PLUS LINUX
    		EMOJI="🐃" 
		;;
esac

THEME="PROMPT=\"%(?:$EMOJI:💢)\"" 

sed -i "2s/.*/$THEME/" ${0:A:h}/zsh-thematic.zsh-theme

cp ${0:A:h}/zsh-thematic.zsh-theme $ZSH/themes/
