# Map Caps Lock to Escape
export PATH="$(du $HOME/.scripts/ | cut -f2 | tr '\n' ':')$PATH"
export VISUAL=vim
export EDITOR=vim
export TERMINAL=kitty

# Switch escape and caps and use wal colors if tty:
tty | grep tty >/dev/null && wal -Rns
