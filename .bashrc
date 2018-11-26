# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.

# Setting Bash prompt. Capitalizes username and host if root user (my root user uses this same config file).
if [ "$EUID" -ne 0 ]
	then export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
	else export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]ROOT\[$(tput setaf 2)\]@\[$(tput setaf 4)\]$(hostname | awk '{print toupper($0)}') \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
fi

### kitty completion ###
# source <(kitty + complete setup bash)

# User specific aliases and functions

#########################################################
#			ALIAS				#
#########################################################
# lsblk with labels
alias lsblk="lsblk -o +LABEL"

# Easier management of the dotfiles repository
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
# NOTE: Remember to "$ dotfiles config status.showUntrackedFiles no"
# because of "$ git init --bare $HOME/.dotfiles"

# Colors
alias ll="ls -halN --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias ccat="highlight --out-format=ansi"

# YouTube
alias YT="youtube-viewer"

# irssi
alias irc='irssi --config=~/.config/.irssi/config --home=~/.config/.irssi/'

### Program-specific stuff ###
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pywal
(cat .cache/wal/sequences &)
