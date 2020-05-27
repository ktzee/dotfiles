# Add colors
autoload -U colors && colors

# Custom PS1
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Load completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Arrow keys
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Delete
bindkey '^[[P' delete-char

# Home/End
bindkey '^[[H'  beginning-of-line
bindkey '^[[4~'  end-of-line

# Ctrl+Arrows to move through words
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
# Ctrl+Backspace deletes previous word
bindkey '^H' backward-kill-word

# Alt+Backspace - delete last word up to /
backward-kill-dir () {
    local WORDCHARS=${WORDCHARS/\/}
    zle backward-kill-word
}
zle -N backward-kill-dir
bindkey '^[^?' backward-kill-dir


# Alt+Left - moves through words up to /
backward-word-dir () {
    local WORDCHARS=${WORDCHARS/\/}
    zle backward-word
}
zle -N backward-word-dir
bindkey "^[[1;3C" forward-word-dir

# Alt+Right - moves through words up to /
forward-word-dir () {
    local WORDCHARS=${WORDCHARS/\/}
    zle forward-word
}
zle -N forward-word-dir
bindkey "^[[1;3D" backward-word-dir

# Include hidden files in autocomplete:
_comp_options+=(globdots)

# Use lf (https://github.com/gokcehan/lf) to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

bindkey -s '^o' 'lfcd\n'  # zsh

# Edit command line in vim with ctrl-e
autoload edit-command-line; zle -N edit-command-line
bindkey "^e" edit-command-line

# nvm
source /usr/share/nvm/init-nvm.sh

# Load zsh-syntax-highlighting; should be last. Needs to be installed (zsh-syntax-highlighting AUR)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# Load profile
source /home/ktz/.config/zsh/.zprofile
