set nocompatible
set encoding=utf-8

syntax on
filetype plugin indent on

set noexpandtab
set tabstop=4
set shiftwidth=4
autocmd FileType python setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd FileType ruby setlocal noexpandtab tabstop=4 shiftwidth=4

set laststatus=2
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

set number
set relativenumber

set backupcopy=yes
set backupdir=/tmp//,.
set directory=/tmp//,.

set mouse=a

colorscheme coded_dark

function! HighlightMath()
	" Syntax patterns for math embedded in Markdown
	syntax region Math start=/\$\$/ end=/\$\$/
	syntax region Math start=/\\begin{align\*}/ end=/\\end{align\*}/
	syntax match  InlineMath "\$[^$].\{-}\$"
endfunction

autocmd BufRead,BufNewFile,BufEnter *.md call HighlightMath()

function! CurrentHighlightGroups()
	echo map(synstack(line("."), col(".")), "synIDattr(v:val, 'name')")
endfunction
