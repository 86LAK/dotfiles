#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Sets PROMPT_DIRTRIM for every shell login
PROMPT_DIRTRIM=1

# Colours
# Define colors
red='\033[01;31m'
orange='\033[38;5;208m'
green='\e[0;32m'
reset='\e[0;m'

# Set prompt colors
PS1="\[$red\]\u@\h \[$orange\]\w \[$green\]\$ \[$reset\]"

# Optional: Change background and text color
echo -e "\e]11;#000000\a"  # Set background color to black
echo -e "\e]10;#FFFFFF\a"  # Set text color to white

LS_COLORS=$LS_COLORS:'di=38;5;208' ; export LS_COLORS

# 
# Aliases
#
alias ls='ls --color=auto'
alias Please='sudo'
alias vi='nvim'
alias nano='nvim'#
alias yeet='yay -Rns'

export PATH="$PATH:/home/lakshan/Applications/flutter/bin"
