set nocompatible

set tabstop=2
set shiftwidth=2
set noexpandtab

set laststatus=2
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

set number
set relativenumber

filetype plugin indent on
syntax enable

highlight Constant cterm=none ctermfg=2
highlight Type cterm=none ctermfg=3
highlight Statement cterm=none ctermfg=4
highlight PreProc cterm=none ctermfg=4
highlight Identifier cterm=none ctermfg=15
highlight Comment cterm=none ctermfg=7

highlight LineNr cterm=none ctermfg=7
highlight NonText cterm=none ctermfg=0
highlight StatusLine cterm=none ctermfg=0 ctermbg=15
highlight StatusLineNC cterm=none ctermfg=7 ctermbg=0

highlight link shQuote String
highlight shVariable cterm=none

highlight vimOption cterm=none ctermfg=15 ctermbg=none
highlight vimHiAttrib cterm=none ctermfg=15 ctermbg=none
