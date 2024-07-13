hi clear

if exists('syntax_on')
  syntax reset
endif

set background=dark

let g:colors_name = 'puerh'

if &t_Co >= 256

  "Custom status line colors
  hi slnormal   ctermfg=196 ctermbg=237 cterm=BOLD
  hi slinsert   ctermfg=78  ctermbg=237 cterm=BOLD
  hi slvisual   ctermfg=221 ctermbg=237 cterm=BOLD
  hi slreplace  ctermfg=117 ctermbg=237 cterm=BOLD
  hi slfilename ctermfg=7   ctermbg=237 cterm=ITALIC
  hi slformat   ctermfg=249 ctermbg=237 cterm=NONE
  hi slnumber   ctermfg=249 ctermbg=237 cterm=NONE


  hi Normal           ctermbg=NONE ctermfg=250  cterm=NONE
  hi Special          ctermbg=NONE ctermfg=161  cterm=NONE
  hi Comment          ctermbg=NONE ctermfg=242  cterm=ITALIC
  hi Statement        ctermbg=NONE ctermfg=210  cterm=NONE
  hi Identifier       ctermbg=NONE ctermfg=131  cterm=NONE
  hi Type             ctermbg=NONE ctermfg=131  cterm=NONE
  hi Function         ctermbg=NONE ctermfg=131  cterm=NONE
  hi PreProc          ctermbg=NONE ctermfg=130  cterm=NONE
  hi Delimiter        ctermbg=NONE ctermfg=130  cterm=NONE
  hi Structure        ctermbg=NONE ctermfg=94   cterm=NONE
  hi Number           ctermbg=NONE ctermfg=222  cterm=NONE
  hi Operator         ctermbg=NONE ctermfg=214  cterm=NONE
  hi Constant         ctermbg=NONE ctermfg=217  cterm=NONE
  hi Boolean          ctermbg=NONE ctermfg=186  cterm=NONE
  hi String           ctermbg=NONE ctermfg=108  cterm=NONE
  hi Title            ctermbg=NONE ctermfg=95   cterm=NONE
  hi LineNr           ctermbg=235  ctermfg=241  cterm=NONE
  hi CursorLineNr     ctermbg=NONE ctermfg=214  cterm=NONE
  hi MatchParen       ctermbg=197  ctermfg=26   cterm=NONE
  hi Conceal          ctermbg=NONE ctermfg=245  cterm=NONE
  hi SpecialKey       ctermbg=NONE ctermfg=239  cterm=NONE
  hi ColorColumn      ctermbg=236  ctermfg=NONE cterm=NONE
  hi SignColumn       ctermbg=233  ctermfg=242  cterm=NONE
  hi Folded           ctermbg=NONE ctermfg=104  cterm=NONE
  hi FoldColumn       ctermbg=NONE ctermfg=104  cterm=NONE
  hi Directory        ctermbg=NONE ctermfg=143  cterm=NONE
  hi Underlined       ctermbg=NONE ctermfg=NONE cterm=underline
  hi Visual           ctermbg=233  ctermfg=110  cterm=REVERSE
  hi VisualNOS        ctermbg=NONE ctermfg=NONE cterm=underline
  hi IncSearch        ctermbg=19   ctermfg=7    cterm=NONE
  hi Search           ctermbg=21   ctermfg=7    cterm=NONE
  hi StatusLine       ctermbg=236  ctermfg=255  cterm=BOLD
  hi StatusLineNC     ctermbg=236  ctermfg=233  cterm=NONE
  hi VertSplit        ctermbg=236  ctermfg=233  cterm=NONE
  hi ModeMsg          ctermbg=NONE ctermfg=188  cterm=NONE
  hi WildMenu         ctermbg=236  ctermfg=131  cterm=underline
  hi DiffAdd          ctermbg=160  ctermfg=204  cterm=NONE
  hi DiffDelete       ctermbg=160  ctermfg=235  cterm=NONE
  hi DiffChange       ctermbg=160  ctermfg=235  cterm=NONE
  hi DiffText         ctermbg=160  ctermfg=235  cterm=NONE

  hi StatNormal       ctermbg=NONE ctermfg=203  cterm=NONE
  hi StatInsert       ctermbg=NONE ctermfg=108  cterm=NONE
  hi StatRplace       ctermbg=NONE ctermfg=124  cterm=NONE
  hi StatVisual       ctermbg=NONE ctermfg=178  cterm=NONE
  hi StatFiname       ctermbg=NONE ctermfg=242  cterm=NONE
  hi StatFormat       ctermbg=NONE ctermfg=245  cterm=NONE
  hi StatRights       ctermbg=NONE ctermfg=241  cterm=NONE
  hi StatNumber       ctermbg=NONE ctermfg=248  cterm=NONE

  hi Pmenu            ctermbg=238  ctermfg=222  cterm=NONE
  hi PmenuSel         ctermbg=137  ctermfg=238  cterm=NONE
  hi PmenuSbar        ctermbg=137  ctermfg=NONE cterm=NONE
  hi PmenuThumb       ctermbg=136  ctermfg=NONE cterm=NONE
  hi SpellBad         ctermbg=94   ctermfg=180  cterm=UNDERCURL
  hi SpellCap         ctermbg=NONE ctermfg=NONE cterm=UNDERCURL
  hi SpellLocal       ctermbg=NONE ctermfg=NONE cterm=UNDERCURL
  hi SpellRare        ctermbg=NONE ctermfg=NONE cterm=UNDERCURL
  hi ErrorMsg         ctermbg=124  ctermfg=235  cterm=NONE
  hi WarningMsg       ctermbg=NONE ctermfg=124  cterm=NONE
  hi MoreMsg          ctermbg=NONE ctermfg=111  cterm=NONE
  hi Question         ctermbg=NONE ctermfg=111  cterm=NONE
  hi TabLine          ctermbg=236  ctermfg=241  cterm=NONE
  hi TabLineSel       ctermbg=236  ctermfg=111  cterm=NONE
  hi TabLineFill      ctermbg=236  ctermfg=230  cterm=NONE
  hi Error            ctermbg=NONE ctermfg=124  cterm=REVERSE
  hi Ignore           ctermbg=NONE ctermfg=NONE cterm=NONE
  hi Todo             ctermbg=NONE  ctermfg=177  cterm=NONE
  hi NonText          ctermbg=NONE ctermfg=240  cterm=NONE
  hi Cursor           ctermbg=231  ctermfg=NONE cterm=NONE
  hi CursorColumn     ctermbg=236  ctermfg=NONE cterm=NONE
  hi CursorLine       ctermbg=236  ctermfg=NONE cterm=NONE
  hi helpleadblank    ctermbg=NONE ctermfg=NONE cterm=NONE
  hi helpnormal       ctermbg=NONE ctermfg=NONE cterm=NONE

endif

if &t_Co == 8

  "Custom status line colors
  hi StatusNormal     ctermbg=NONE ctermfg=1 cterm=NONE
  hi StatusInsert     ctermbg=NONE ctermfg=2 cterm=NONE
  hi StatusReplace    ctermbg=NONE ctermfg=5 cterm=NONE
  hi StatusVisual     ctermbg=NONE ctermfg=3 cterm=NONE
  hi StatusFilename   ctermbg=NONE ctermfg=7 cterm=NONE
  hi StatusFormat     ctermbg=NONE ctermfg=7 cterm=NONE
  hi StatusNumber     ctermbg=NONE ctermfg=7 cterm=NONE

  hi Normal           ctermbg=NONE ctermfg=7 cterm=NONE
  hi Special          ctermbg=NONE ctermfg=1 cterm=BOLD
  hi Comment          ctermbg=NONE ctermfg=0 cterm=BOLD
  hi Statement        ctermbg=NONE ctermfg=1 cterm=BOLD
  hi Identifier       ctermbg=NONE ctermfg=1 cterm=NONE
  hi Type             ctermbg=NONE ctermfg=1 cterm=NONE
  hi Function         ctermbg=NONE ctermfg=1 cterm=NONE
  hi PreProc          ctermbg=NONE ctermfg=3 cterm=NONE
  hi Delimiter        ctermbg=NONE ctermfg=3 cterm=NONE
  hi Structure        ctermbg=NONE ctermfg=3 cterm=NONE
  hi Number           ctermbg=NONE ctermfg=3 cterm=NONE
  hi Operator         ctermbg=NONE ctermfg=3 cterm=NONE
  hi Constant         ctermbg=NONE ctermfg=1 cterm=BOLD
  hi Boolean          ctermbg=NONE ctermfg=3 cterm=NONE
  hi String           ctermbg=NONE ctermfg=2 cterm=BOLD
  hi Title            ctermbg=NONE ctermfg=1 cterm=BOLD
  hi LineNr           ctermbg=NONE ctermfg=0 cterm=BOLD
  hi CursorLineNr     ctermbg=NONE ctermfg=3 cterm=NONE
  hi MatchParen       ctermbg=1    ctermfg=4 cterm=NONE
  hi Conceal          ctermbg=7    ctermfg=0 cterm=NONE
  hi SpecialKey       ctermbg=NONE ctermfg=0 cterm=BOLD
  hi ColorColumn      ctermbg=7    ctermfg=0 cterm=NONE
  hi SignColumn       ctermbg=NONE ctermfg=7 cterm=NONE
  hi Folded           ctermbg=NONE ctermfg=4 cterm=NONE
  hi FoldColumn       ctermbg=NONE ctermfg=4 cterm=NONE
  hi Directory        ctermbg=NONE ctermfg=2 cterm=NONE
  hi Underlined       ctermbg=NONE ctermfg=4 cterm=underline
  hi Visual           ctermbg=0    ctermfg=4 cterm=REVERSE
  hi VisualNOS        ctermbg=NONE ctermfg=0 cterm=underline
  hi IncSearch        ctermbg=4    ctermfg=7 cterm=NONE
  hi Search           ctermbg=4    ctermfg=7 cterm=BOLD
  hi StatusLine       ctermbg=NONE ctermfg=7 cterm=BOLD
  hi StatusLineNC     ctermbg=NONE ctermfg=0 cterm=NONE
  hi VertSplit        ctermbg=NONE ctermfg=0 cterm=BOLD
  hi ModeMsg          ctermbg=NONE ctermfg=7 cterm=NONE
  hi WildMenu         ctermbg=NONE ctermfg=1 cterm=underline
  hi DiffAdd          ctermbg=2    ctermfg=1 cterm=BOLD
  hi DiffDelete       ctermbg=2    ctermfg=0 cterm=NONE
  hi DiffChange       ctermbg=2    ctermfg=0 cterm=NONE
  hi DiffText         ctermbg=2    ctermfg=0 cterm=NONE

  hi StatNormal       ctermbg=NONE ctermfg=1 cterm=NONE
  hi StatInsert       ctermbg=NONE ctermfg=2 cterm=NONE
  hi StatRplace       ctermbg=NONE ctermfg=1 cterm=NONE
  hi StatVisual       ctermbg=NONE ctermfg=3 cterm=NONE
  hi StatFiname       ctermbg=NONE ctermfg=7 cterm=NONE
  hi StatFormat       ctermbg=NONE ctermfg=7 cterm=NONE
  hi StatRights       ctermbg=NONE ctermfg=7 cterm=NONE
  hi StatNumber       ctermbg=NONE ctermfg=7 cterm=NONE

  hi Pmenu            ctermbg=NONE ctermfg=3 cterm=NONE
  hi PmenuSel         ctermbg=3    ctermfg=0 cterm=NONE
  hi PmenuSbar        ctermbg=3    ctermfg=0 cterm=NONE
  hi PmenuThumb       ctermbg=3    ctermfg=0 cterm=NONE
  hi SpellBad         ctermbg=3    ctermfg=7 cterm=UNDERCURL
  hi SpellCap         ctermbg=NONE ctermfg=0 cterm=UNDERCURL
  hi SpellLocal       ctermbg=NONE ctermfg=0 cterm=UNDERCURL
  hi SpellRare        ctermbg=NONE ctermfg=0 cterm=UNDERCURL
  hi ErrorMsg         ctermbg=1    ctermfg=0 cterm=NONE
  hi WarningMsg       ctermbg=NONE ctermfg=1 cterm=NONE
  hi MoreMsg          ctermbg=NONE ctermfg=6 cterm=NONE
  hi Question         ctermbg=NONE ctermfg=6 cterm=NONE
  hi TabLine          ctermbg=0    ctermfg=7 cterm=NONE
  hi TabLineSel       ctermbg=0    ctermfg=6 cterm=NONE
  hi TabLineFill      ctermbg=0    ctermfg=3 cterm=NONE
  hi Error            ctermbg=NONE ctermfg=1 cterm=REVERSE
  hi Ignore           ctermbg=NONE ctermfg=0 cterm=NONE
  hi Todo             ctermbg=NONE ctermfg=1 cterm=BOLD
  hi NonText          ctermbg=NONE ctermfg=0 cterm=NONE
  hi Cursor           ctermbg=7    ctermfg=0 cterm=NONE
  hi CursorColumn     ctermbg=0    ctermfg=0 cterm=NONE
  hi CursorLine       ctermbg=0    ctermfg=0 cterm=NONE
  hi helpleadblank    ctermbg=NONE ctermfg=0 cterm=NONE
  hi helpnormal       ctermbg=NONE ctermfg=0 cterm=NONE

endif

hi link Number             Constant
hi link Character          Constant
hi link Conditional        Statement
hi link Debug              Special
hi link Define             PreProc
hi link Exception          Statement
hi link Float              Number
hi link HelpCommand        Statement
hi link HelpExample        Statement
hi link Include            PreProc
hi link Keyword            Statement
hi link Label              Statement
hi link Macro              PreProc
hi link Operator           Statement
hi link PreCondit          PreProc
hi link Repeat             Statement
hi link SpecialChar        Special
hi link SpecialComment     Special
hi link StorageClass       Type
hi link Tag                Special
hi link Typedef            Type
hi link htmlEndTag         htmlTagName
hi link htmlLink           Function
hi link htmlSpecialTagName htmlTagName
hi link htmlTag            htmlTagName
hi link xmlTag             Statement
hi link xmlTagName         Statement
hi link xmlEndTag          Statement
hi link markdownItalic     Preproc
hi link diffBDiffer        WarningMsg
hi link diffCommon         WarningMsg
hi link diffDiffer         WarningMsg
hi link diffIdentical      WarningMsg
hi link diffIsA            WarningMsg
hi link diffNoEOL          WarningMsg
hi link diffOnly           WarningMsg
hi link diffRemoved        WarningMsg
hi link diffAdded          String
