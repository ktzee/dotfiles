" Some basics:
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number
	set expandtab

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow
	set splitright

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Global register copy/paste shortcut
 	vnoremap <C-c> "*y :let @+=@*<CR>
	map <C-v> "+P

" Plugin Manager
" 1. Automated installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif" 
"2. Call Manager
call plug#begin('~/.vim/plugged')

""" pywal SCHEME """
Plug 'dylanaraps/wal.vim'

""" POWERLINE """
Plug 'vim-airline/vim-airline'

""" SEARCH """
Plug 'kien/ctrlp.vim'

""" NERDTREE """
Plug 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


""" PYTHON """
let python_highlight_all=1
syntax on
" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" Python Plugins and their conf
Plug 'vim-scripts/indentpython.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
let g:ycm_autoclose_preview_window_after_completion=1 " Close autocompletion window and leader-g for def
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR> 


""" GO """
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }



" 4. call plug#end() to update &runtimepath and initialize plugin system 
call plug#end()"
