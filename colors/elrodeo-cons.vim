" Vim color file
" Name: elrodeo
" Maintainer: Christian Müller (@chmllr)
" Version: 1.0
"
" Inspired by the color scheme used by ibdknox.
set background=dark
hi clear 
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="elrodeo-cons"
" the nexz block is copied from the wombat theme:
" Vim >= 7.0 specific colors
if version >= 700
hi CursorLine guibg=#2d2d2d ctermbg=236 
hi CursorColumn guibg=#2d2d2d ctermbg=236 
hi MatchParen guifg=#f6f3e8 ctermfg=7 guibg=#857b6f ctermbg=243 gui=bold 
hi Pmenu guifg=#f6f3e8 ctermfg=7 guibg=#444444 ctermbg=238 
hi PmenuSel guifg=#000000 ctermfg=0 guibg=#cae682 ctermbg=186 
endif
" General colors
hi Normal guibg=#404040 ctermbg=238 guifg=#d0d0d0 ctermfg=252 
hi Cursor guifg=NONE guibg=#656565 ctermbg=241 
hi NonText guifg=#808080 ctermfg=244 guibg=#404040 ctermbg=238 
hi LineNr guifg=#666666 ctermfg=241 guibg=#383838 ctermbg=237 
hi StatusLine guifg=#f6f3e8 ctermfg=7 guibg=#444444 ctermbg=238 
hi StatusLineNC guifg=#857b6f ctermfg=243 guibg=#444444 ctermbg=238 
hi VertSplit guifg=#444444 ctermfg=238 guibg=#444444 ctermbg=238 
hi Folded guibg=#384048 ctermbg=238 guifg=#a0a8b0 ctermfg=248 
hi Title guifg=#f6f3e8 ctermfg=7 guibg=NONE gui=bold 
hi Visual guifg=#f6f3e8 ctermfg=7 guibg=#444444 ctermbg=238 
hi SpecialKey guifg=#808080 ctermfg=244 guibg=#343434 ctermbg=236 
" Syntax highlighting
hi Comment guifg=#677c99 ctermfg=66 
hi Operator guifg=#a080f0 ctermfg=141 
hi Todo guifg=#333333 ctermfg=236 guibg=#cccccc ctermbg=252 
hi Constant guifg=white 
hi String guifg=#bbddff ctermfg=153 
hi Identifier guifg=#30c080 ctermfg=72 
hi Define guifg=#30c080 ctermfg=72 
hi Function guifg=#30c080 ctermfg=72 
hi Macro guifg=#30c080 ctermfg=72 
hi Number guifg=#319899 ctermfg=66 
hi Special guifg=#30c080 ctermfg=72 
hi Conditional guifg=#30c080 ctermfg=72 
hi Boolean guifg=#99dd99 ctermfg=114 
hi Delimiter guifg=#999999 ctermfg=246 
hi Character guifg=#55d2ee ctermfg=81 
hi Search guifg=black guibg=#30c080 ctermbg=72 
hi Visual guibg=#303030 ctermbg=236 
" not used in Clojure (left as in wombat)
hi Type guifg=#cae682 ctermfg=186 
hi Statement guifg=#8ac6f2 ctermfg=117 
hi Keyword guifg=#8ac6f2 ctermfg=117 
hi PreProc guifg=#e5786d ctermfg=173 
