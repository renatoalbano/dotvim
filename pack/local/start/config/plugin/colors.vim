set background=dark
" colorscheme koehler
colorscheme habamax

syntax on
set hlsearch
set cursorline

" bg
hi Normal ctermbg=232

" line numbers
hi LineNr ctermbg=248 ctermfg=238
hi CursorLine cterm=none ctermbg=235
hi CursorLineNr ctermbg=249 ctermfg=238

" invisible chars
hi NonText ctermfg=237
hi SpecialKey ctermfg=238

" fold
hi Folded ctermbg=237 ctermfg=242
hi FoldColumn ctermbg=237 ctermfg=242

" autocomplete menu
hi Pmenu ctermbg=247 ctermfg=238
hi PmenuSel ctermbg=238 ctermfg=249

" diff
highlight DiffAdd cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete cterm=bold ctermbg=none ctermfg=167
highlight DiffChange cterm=bold ctermbg=none ctermfg=227

" ~ char
hi EndOfBuffer ctermfg=236
