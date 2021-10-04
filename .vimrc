set nocompatible

set tabstop=4
set shiftwidth=4
set noexpandtab
autocmd BufEnter * :set noexpandtab

set laststatus=2
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

set number
set relativenumber

filetype plugin indent on
syntax enable

set mouse=a

colorscheme neon_dark

function! HighlightMath()
	" Syntax patterns for math embedded in Markdown
	syn region Math start=/\$\$/ end=/\$\$/
	syn match InlineMath "\$[^$].\{-}\$"
endfunction

autocmd BufRead,BufNewFile,BufEnter *.md call HighlightMath()

function! CurrentHighlightGroups()
	echo map(synstack(line("."), col(".")), "synIDattr(v:val, 'name')")
endfunction
