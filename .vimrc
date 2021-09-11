set nocompatible

set tabstop=2
set shiftwidth=2
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

function! CurrentHighlightGroups()
  echo map(synstack(line("."), col(".")), "synIDattr(v:val, 'name')")
endfunc
