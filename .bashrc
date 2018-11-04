# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

#########################################################
#			ALIAS				#
#########################################################

# Easier management of the dotfiles repository
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias vim="nvim"
# NOTE: Remember to "$ dotfiles config status.showUntrackedFiles no"
# because of "$ git init --bare $HOME/.dotfiles"

export PATH=$PATH:/usr/local/go/bin
