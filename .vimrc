set nocompatible
set encoding=utf-8

call plug#begin("~/.vim/plugins")
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'wellle/targets.vim'

	Plug 'romainl/vim-cool'
	Plug 'ervandew/supertab'

	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
call plug#end()

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

set hlsearch
set incsearch
set ignorecase
set smartcase

set backupcopy=yes
set backupdir=/tmp//,.
set directory=/tmp//,.

set mouse=a
set ttimeoutlen=25

function! KeepPosition(command)
	let l:pos = getpos('.')
	execute a:command
	call setpos('.', l:pos)
endfunction
autocmd BufWritePre * call KeepPosition("%s/\s\+$//e")

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

let g:fzf_command_prefix = "Fzf"
let g:fzf_layout = {"down": "~40%"}
let g:fzf_preview_window = []

nnoremap <C-p> :FzfFiles<CR>
