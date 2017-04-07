" Name:   dark
" Author: Brandon Walker
" Notes:  Began with template: 
"         https://github.com/ggalindezb/Vim-Colorscheme-Template.git

" TODO: look for better java syntax highlighting - maybe MacVim?

" --------------------------------
" Initialize
" --------------------------------
set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="dark"

"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------
"----------------------------------------------------------------
" Syntax group   | Foreground    | Background    | Style        |
"----------------------------------------------------------------

" --------------------------------
" Editor settings
" --------------------------------
hi Normal          ctermfg=14      ctermbg=8       cterm=none
" TODO: Figure out Cursor (right now displaying ctermbg=12)
" hi Cursor          ctermfg=none    ctermbg=13      cterm=none
hi Cursor          ctermfg=none    ctermbg=4       cterm=none
hi iCursor         ctermfg=none    ctermbg=4       cterm=none
hi CursorLine      ctermfg=none    ctermbg=10      cterm=none
" hi CursorLine      ctermfg=none    ctermbg=none    cterm=none
hi LineNr          ctermfg=12      ctermbg=none    cterm=none
hi CursorLineNR    ctermfg=none    ctermbg=none    cterm=none
hi link CursorLineNR Normal

" -----------------
" - Number column -
" -----------------
hi CursorColumn    ctermfg=none    ctermbg=10      cterm=none
hi FoldColumn      ctermfg=none    ctermbg=0       cterm=none
hi SignColumn      ctermfg=none    ctermbg=0       cterm=none
hi Folded          ctermfg=none    ctermbg=0       cterm=none

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
hi VertSplit       ctermfg=15      ctermbg=0       cterm=none
hi ColorColumn     ctermfg=none    ctermbg=10      cterm=none
hi TabLine         ctermfg=13      ctermbg=0       cterm=none
hi TabLineFill     ctermfg=none    ctermbg=0       cterm=none
hi TabLineSel      ctermfg=15      ctermbg=8       cterm=none

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory       ctermfg=6       ctermbg=none    cterm=none
hi Search          ctermfg=none    ctermbg=13      cterm=none
hi IncSearch       ctermfg=none    ctermbg=13      cterm=none

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine      ctermfg=15      ctermbg=10      cterm=none
hi StatusLineNC    ctermfg=13      ctermbg=0       cterm=none
hi WildMenu        ctermfg=10      ctermbg=15      cterm=none
hi Question        ctermfg=2       ctermbg=none    cterm=none
hi Title           ctermfg=4       ctermbg=none    cterm=none
hi ModeMsg         ctermfg=4       ctermbg=none    cterm=none
hi MoreMsg         ctermfg=none    ctermbg=none    cterm=none

" --------------
" - Visual aid -
" --------------
hi MatchParen      ctermfg=none    ctermbg=none    cterm=underline
hi Visual          ctermfg=none    ctermbg=13      cterm=none
hi VisualNOS       ctermfg=none    ctermbg=12      cterm=none
hi NonText         ctermfg=12      ctermbg=none    cterm=none

hi Todo            ctermfg=5       ctermbg=none    cterm=none
hi Underlined      ctermfg=6       ctermbg=none    cterm=underline
" TODO: turn off Error on text being written? - bg or fg?
hi Error           ctermfg=15      ctermbg=1       cterm=none
hi ErrorMsg        ctermfg=1       ctermbg=none    cterm=none
hi WarningMsg      ctermfg=9       ctermbg=none    cterm=none
hi Ignore          ctermfg=12      ctermbg=none    cterm=none
" TODO: SpecialKey?
hi SpecialKey      ctermfg=6       ctermbg=none    cterm=none

" --------------------------------
" Variable types
" --------------------------------
hi Constant        ctermfg=9       ctermbg=none    cterm=none
hi String          ctermfg=2       ctermbg=none    cterm=none
" TODO: Maybe change StringDelimiter
hi StringDelimiter ctermfg=none    ctermbg=none    cterm=none
hi link StringDelimiter String
hi Character       ctermfg=none    ctermbg=none    cterm=none 
hi link Character String
hi Number          ctermfg=none    ctermbg=none    cterm=none
hi link Number Constant
hi Boolean         ctermfg=none    ctermbg=none    cterm=none 
hi link Boolean Constant
hi Float           ctermfg=none    ctermbg=none    cterm=none
hi link Float Constant

" TODO: Look over Identifier & function (make sure it's function name, not 'fun'
hi Identifier      ctermfg=none    ctermbg=none    cterm=none
hi link Identifier Normal
hi Function        ctermfg=4       ctermbg=none    cterm=none

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       ctermfg=5       ctermbg=none    cterm=none
hi Conditional     ctermfg=none    ctermbg=none    cterm=none
hi link Conditional Statement
hi Repeat          ctermfg=none    ctermbg=none    cterm=none
hi link Repeat Statement
hi Label           ctermfg=none    ctermbg=none    cterm=none
hi link Label Statement
" TODO: Operator
hi Operator        ctermfg=none    ctermbg=none    cterm=none
hi link Operator Statement
" TODO: Keyword
hi Keyword         ctermfg=none    ctermbg=none    cterm=none
hi Exception       ctermfg=none    ctermbg=none    cterm=none
hi link Exception Conditional
" TODO: Figure out italic
hi Comment         ctermfg=7       ctermbg=none    cterm=none

" TODO: All this section
hi Special         ctermfg=6       ctermbg=none    cterm=none
hi SpecialChar     ctermfg=none    ctermbg=none    cterm=none
hi link SpecialChar Special
hi Tag             ctermfg=none    ctermbg=none    cterm=none
hi link Tag Special
hi Delimiter       ctermfg=none    ctermbg=none    cterm=none
hi link Delimiter Special
hi SpecialComment  ctermfg=none    ctermbg=none    cterm=none
hi link SpecialComment Comment
hi Debug           ctermfg=none    ctermbg=none    cterm=none
hi link Debug Special


" ----------
" - C like -
" ----------
" TODO: All this section
hi PreProc         ctermfg=none    ctermbg=none    cterm=none
hi Include         ctermfg=5       ctermbg=none    cterm=none
hi link Include PreProc
hi Define          ctermfg=none    ctermbg=none    cterm=none
hi link Define PreProc
hi Macro           ctermfg=none    ctermbg=none    cterm=none
hi link Macro PreProc
hi PreCondit       ctermfg=none    ctermbg=none    cterm=none
hi link PreCondit PreProc

hi Type            ctermfg=3       ctermbg=none    cterm=none
hi StorageClass    ctermfg=5       ctermbg=none    cterm=none
" TODO: Structure
hi Structure       ctermfg=none    ctermbg=none    cterm=none
hi link Structure Type
" TODO: Typedef
hi Typedef         ctermfg=none    ctermbg=none    cterm=none
hi link Typedef StorageClass

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         ctermfg=15      ctermbg=2       cterm=none
hi DiffChange      ctermfg=none    ctermbg=none    cterm=none
hi DiffDelete      ctermfg=15      ctermbg=1       cterm=none
hi DiffText        ctermfg=15      ctermbg=9       cterm=none

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           ctermfg=none    ctermbg=none    cterm=none
hi link Pmenu StatusLine 
hi PmenuSel        ctermfg=none    ctermbg=none    cterm=none
hi link PmenuSel WildMenu
hi PmenuSbar       ctermfg=none    ctermbg=none    cterm=none
hi link PmenuSbar Pmenu
hi PmenuThumb      ctermfg=none    ctermbg=none    cterm=none
hi link PmenuThumb PmenuSel

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        ctermfg=15      ctermbg=1       cterm=none
hi SpellCap        ctermfg=15      ctermbg=4       cterm=none
hi SpellLocal      ctermfg=15      ctermbg=9       cterm=none
hi SpellRare       ctermfg=15      ctermbg=4       cterm=none

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------
