" Blues colorscheme for Vim
" Cool text with VFD constants, sunny searches and
" incandescent errors.
" Maintainer: Daniel Lima <danielmariodelima@gmail.com>
" License: MIT

if $TERM != 'linux' || has('gui')

set t_Co=256
let g:colors_name="rellekka"

hi StatusNormal       ctermbg=NONE ctermfg=203  cterm=NONE
hi StatusInsert       ctermbg=NONE ctermfg=82   cterm=NONE
hi StatusReplace      ctermbg=NONE ctermfg=169  cterm=NONE
hi StatusVisual       ctermbg=NONE ctermfg=186  cterm=NONE
hi StatusFilename     ctermbg=NONE ctermfg=103  cterm=NONE
hi StatusFormat       ctermbg=NONE ctermfg=103  cterm=NONE
hi StatusNumber       ctermbg=NONE ctermfg=103  cterm=NONE

hi Normal        ctermfg=188    ctermbg=NONE  cterm=NONE  guifg=#c6c6c6  guibg=#1c1c1c
hi Cursor        ctermfg=Black  ctermbg=White cterm=NONE  guifg=Black    guibg=White
hi SpecialKey    ctermfg=30     ctermbg=NONE  cterm=NONE  guifg=#008787  guibg=#1c1c1c
hi Directory     ctermfg=32     ctermbg=NONE  cterm=NONE  guifg=#0087d7  guibg=#1c1c1c
hi ErrorMsg      ctermfg=203    ctermbg=NONE  cterm=NONE  guifg=#ff5f5f  guibg=#1c1c1c
hi PreProc       ctermfg=29     ctermbg=NONE  cterm=NONE  guifg=#a8a8a8  guibg=#1c1c1c
hi Search        ctermfg=NONE   ctermbg=88    cterm=NONE  guifg=#ffff5f  guibg=#1c1c1c
hi Type          ctermfg=62     ctermbg=NONE  cterm=NONE  guifg=#5fafff  guibg=#1c1c1c
hi Statement     ctermfg=110    ctermbg=NONE  cterm=NONE  guifg=#5fafff  guibg=#1c1c1c
hi Comment       ctermfg=239    ctermbg=NONE  cterm=NONE  guifg=#6c6c6c  guibg=#1c1c1c
hi Identifier    ctermfg=105    ctermbg=NONE  cterm=NONE  guifg=#8787ff  guibg=#1c1c1c
hi DiffText      ctermfg=203    ctermbg=NONE  cterm=NONE  guifg=#ff5f5f  guibg=#1c1c1c
hi Constant      ctermfg=72     ctermbg=NONE  cterm=NONE  guifg=#5fd7af  guibg=#1c1c1c
hi Todo          ctermfg=118    ctermbg=NONE  cterm=NONE  guifg=#87ff00  guibg=#1c1c1c
hi Error         ctermfg=203    ctermbg=NONE  cterm=NONE  guifg=#ff5f5f  guibg=#1c1c1c
hi Special       ctermfg=138    ctermbg=NONE  cterm=NONE  guifg=#8787af  guibg=#1c1c1c
hi Ignore        ctermfg=220    ctermbg=NONE  cterm=NONE  guifg=#ffd700  guibg=#1c1c1c
hi Underline     ctermfg=244    ctermbg=NONE  cterm=NONE  guifg=#808080  guibg=#1c1c1c
hi NonText       ctermfg=87     ctermbg=NONE  cterm=NONE  guifg=#5fffff  guibg=#1c1c1c
hi MatchParen    ctermfg=203    ctermbg=NONE  cterm=NONE  guifg=#ff5f5f  guibg=#1c1c1c

hi Folded        ctermfg=247    ctermbg=234   cterm=NONE  guifg=#9e9e9e  guibg=#1c1c1c
hi FoldColumn    ctermfg=247    ctermbg=234   cterm=NONE  guifg=#9e9e9e  guibg=#1c1c1c
hi StatusLineNC  ctermfg=236    ctermbg=234   cterm=NONE  guifg=#262626  guibg=#444444
hi StatusLine    ctermfg=247    ctermbg=234   cterm=NONE  guifg=#262626  guibg=#9e9e9e
hi VertSplit     ctermfg=247    ctermbg=NONE  cterm=NONE  guifg=#9e9e9e  guibg=#1c1c1c

hi LineNr        ctermfg=240    ctermbg=NONE  cterm=NONE  guifg=#9e9e9e  guibg=#262626
hi CursorLineNr  ctermfg=White  ctermbg=25    cterm=NONE  guifg=White    guibg=#005faf
hi CursorLine                   ctermbg=235   cterm=NONE                 guibg=#303030
hi Visual                       ctermbg=236                              guibg=#444444

hi Pmenu         ctermfg=Gray   ctermbg=236   cterm=NONE  guifg=Gray     guibg=#444444
hi PmenuSel      ctermfg=White  ctermbg=25    cterm=NONE  guifg=White    guibg=#005faf
hi PmenuSbar     ctermfg=236    ctermbg=235   cterm=NONE  guifg=#444444  guibg=#303030
hi PmenuThumb    ctermfg=Gray   ctermbg=Gray  cterm=NONE  guifg=Gray     guibg=Gray

hi DiffAdd       ctermfg=10     ctermbg=NONE  cterm=NONE  guifg=#00ff00  guibg=#1c1c1c
hi DiffChange    ctermfg=227    ctermbg=NONE  cterm=NONE  guifg=#ffff5f  guibg=#1c1c1c
hi DiffDelete    ctermfg=203    ctermbg=NONE  cterm=NONE  guifg=#ff5f5f  guibg=#1c1c1c
hi SignColumn    ctermfg=NONE   ctermbg=NONE  cterm=NONE  guifg=#1c1c1c  guibg=#1c1c1c

end
