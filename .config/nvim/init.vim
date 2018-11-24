" Decent tabbing. Two spaces instead of the tab character.
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

" Style
syntax enable
set background=dark
" colorscheme solarized

" Plugin Manager (vim-plug)
" 1. Automated installation
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" 2. Call Manager
call plug#begin('~/.vim/plugged')
" 3. Call Plugins
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" 4. call plug#end() to update &runtimepath and initialize plugin system 
call plug#end()
