#!/bin/bash

MONTH=$(date +%b)

case $MONTH in
	"Jan")
 		MSG="🎆✨🌟🎆✨ Happy New Year !!!!!! 🎆✨🌟🎆✨"
	 	EMOJI="✨🎆"
		;;
	"Jun")
		MSG="🏳️<200d>🌈🌈🏳️<200d>🌈🌈 LGBTQIA+ Pride Month !!!! 🏳️<200d>🌈🌈🏳️<200d>🌈🌈"
		EMOJI="🏳️‍🌈🌈"
		;;
	"Dec")
		MSG="🎄🎄🎄🎄🎅 Merry Christmas !!!!!! 🎅🎄🎄🎄🎄"
		EMOJI="🎅🎄"
		if [[ $(date +%d) > 25 ]]
		then
			MSG="🌟✨🌟✨ Happy New Year !!!!!! 🌟✨🌟✨"	
			EMOJI="🌟✨"
		fi 
  		;;
	*)
		MSG="Welcome Back $USER!"
    		EMOJI="🐮"
		;;
esac

echo $MSG

TEMPLATE="
PROMPT=\"%(?:$EMOJI:💢)\"
PROMPT+=' %{\$FG[003]%}%c%{\$reset_color%} \$(git_prompt_info)'
 
ZSH_THEME_GIT_PROMPT_PREFIX=\"%{\$fg_bold[blue]%}git:(%{\$fg[red]%}\"
ZSH_THEME_GIT_PROMPT_SUFFIX=\"%{\$reset_color%} \" 
ZSH_THEME_GIT_PROMPT_DIRTY=\"%{\$FG[009]%}) %{\$fg[yellow]%}✗\" 
ZSH_THEME_GIT_PROMPT_CLEAN=\"%{\$FG[009]%})\"
" 

echo "$TEMPLATE" >> $ZSH/themes/thematic-theme.zsh-theme 
