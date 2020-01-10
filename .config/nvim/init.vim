let mapleader =","
set nu
syntax on
filetype plugin indent on

" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <c-r>%<CR><CR>

call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/ying17zi/vim-live-latex-preview'
Plug 'lervag/vimtex'
Plug 'LaTeX-Box-Team/LaTeX-Box'
call plug#end()
