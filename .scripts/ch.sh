#!/bin/bash

#        _       _                _      
#       | |     | |              (_)     
#   __ _| |_ __ | |__   __ ___  ___ _ __ 
#  / _` | | '_ \| '_ \ / _` \ \/ / | '__| Shivaji Chalise (alphajr)
# | (_| | | |_) | | | | (_| |>  <| | |    http://www.github.com/shivajichalise
#  \__,_|_| .__/|_| |_|\__,_/_/\_\ |_|   
#         | |                   _/ |     
#         |_|                  |__/      
#
# cheatsheet (I learned this from the one and only: ThePrimeagen)

languages=$(echo "php javascript typescript rust golang bash python solidity curl" | tr " " "\n")
core_utils=$(echo "awk sed xargs find head less tail grep" | tr " " "\n")

selected=$(echo -e "$languages\n$core_utils" | fzf)

if [[ -z $selected ]]; then
    exit 0
fi

read -p "query: " query

tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    if echo "$languages" | grep -qs $selected; then
        curl cheat.sh/$selected/$(echo "$query" | tr " " "+") | less --RAW-CONTROL-CHARS
    else
        curl cheat.sh/$selected~$query | less --RAW-CONTROL-CHARS
    fi
else
    if echo "$languages" | grep -qs $selected; then
        tmux split-window -h bash -c "curl cheat.sh/$selected/$(echo "$query" | tr " " "+") | less --RAW-CONTROL-CHARS"
    else
        tmux split-window -h bash -c "curl cheat.sh/$selected~$query | less --RAW-CONTROL-CHARS"
    fi
fi
