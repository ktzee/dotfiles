" Some basics:
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number

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
