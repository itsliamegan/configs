highlight Constant   cterm=none ctermfg=2  ctermbg=none
highlight Type       cterm=none ctermfg=3  ctermbg=none
highlight Statement  cterm=none ctermfg=4  ctermbg=none
highlight PreProc    cterm=none ctermfg=4  ctermbg=none
highlight Identifier cterm=none ctermfg=15 ctermbg=none
highlight Comment    cterm=none ctermfg=7  ctermbg=none
highlight Delimiter  cterm=none ctermfg=7  ctermbg=none
highlight Operator   cterm=none ctermfg=3  ctermbg=none

highlight LineNr       cterm=none ctermfg=7 ctermbg=none
highlight NonText      cterm=none ctermfg=0 ctermbg=none
highlight StatusLine   cterm=none ctermfg=0 ctermbg=15
highlight StatusLineNC cterm=none ctermfg=7 ctermbg=0

" Shell syntax
highlight link shQuote String
highlight shVariable cterm=none

" Vim syntax
highlight vimOption   cterm=none ctermfg=15 ctermbg=none
highlight vimHiAttrib cterm=none ctermfg=15 ctermbg=none

" C syntax
highlight cStructure cterm=none ctermfg=4 ctermbg=none

" JS syntax
highlight link javaScriptIdentifier Keyword
highlight link javaScriptFunction   Keyword
highlight link javascriptBraces     Delimiter

" JSON syntax
highlight link jsonBraces  Delimiter
highlight link jsonQuote   String
highlight link jsonKeyword String

" HTML syntax
highlight link htmlTag    htmlTagName
highlight link htmlEndTag htmlTagName

" Markdown syntax
highlight Math       cterm=none ctermfg=2 ctermbg=none
highlight InlineMath cterm=none ctermfg=2 ctermbg=none
