#
# User configuration sourced by interactive shells
#
cat ~/.cache/wal/sequences
# wal -i ~/.config/i3/wallpapers/wall.png
# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh


###################
#			ALIAS				#
###################

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias vim="nvim"
alias ll="lsd -Fl1"
alias sm="~/.scripts/savememe.sh"
export NVM_DIR="$HOME/.nvm"
export PATH=$PATH:$HOME/.cargo/bin:$HOME/go/bin/
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion<Paste>
