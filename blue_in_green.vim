" Vim color file
" Maintainer: Eddie Kovsky
" Version: 1.0
" License: GPLv2
"

if has("gui_running")
    set background=dark
endif

hi clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "blue_in_green"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
	" Core syntax groups
	hi Normal         ctermbg=0   ctermfg=15   guibg=#263238 guifg=#ffffff
	hi LineNr         ctermbg=0   ctermfg=109  guibg=#263238 guifg=#a7adba
	hi FoldColumn     ctermbg=0   ctermfg=188  guibg=#263238 guifg=#b0bec5
	hi Folded         ctermbg=0   ctermfg=188  guibg=#263238 guifg=#b0bec5
	hi MatchParen     ctermbg=45  ctermfg=0    guibg=#81d4fa guifg=#000000
	hi signColumn     ctermbg=0   ctermfg=188  guibg=#263238 guifg=#b0bec5

	" Common syntax groups for programming languages
	" See :help group-name
	"
	" Constant - green
	hi Constant       ctermbg=NONE ctermfg=10  guibg=NONE guifg=#8bc34a
	hi String         ctermbg=NONE ctermfg=10  guibg=NONE guifg=#9ccc65
	hi link Character              Constant
	hi link Number                 Constant
	hi link Boolean                Constant
	hi link Float                  Constant

	" Variables (identifiers in Vim) are blue; function names are orange.
	" Some Vim syntax files, including c.vim, do not define these groups.
	hi Function     ctermbg=NONE ctermfg=215  guibg=NONE guifg=#ffcc80
	hi Identifier   ctermbg=NONE ctermfg=159  guibg=NONE guifg=#84ffff cterm=NONE gui=NONE

	" Statement - yellow
	hi Statement      ctermbg=NONE ctermfg=228  guibg=NONE guifg=#fff59d gui=NONE
	hi link Conditional            Statement
	hi link Repeat				   Statement
	hi link Label                  Statement
	hi link Operator               Statement
	hi link Keyword                Statement
	hi link Exception			   Statement

	" Preprocessor - gold
	hi PreProc        ctermbg=NONE ctermfg=220  guibg=NONE guifg=#ffd700
	hi link Include                PreProc
	hi link Define                 PreProc
	hi link Macro                  PreProc
	hi link PreCondit              PreProc

	" Type: int, long, char, etc. - aqua
	hi Type           ctermbg=NONE ctermfg=159  guibg=NONE guifg=#84ffff gui=NONE
	hi link StorageClass           Statement
	hi link Structure              Statement
	hi link Typedef                Type

	" Special symbols - orange
	hi Special        ctermbg=NONE ctermfg=208  guibg=NONE guifg=#ff9800
	"hi SpecialChar
	"hi Tag
	hi link Delimiter              Special
	"hi SpecialComment
	"hi Debug

	" Blank, hidden, unprintable characters that don't exist inside the text
	hi SpecialKey     ctermbg=NONE ctermfg=240  guibg=NONE guifg=#585858
	hi NonText        ctermbg=NONE ctermfg=240  guibg=NONE guifg=#585858
	hi Ignore         ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
	hi Conceal        ctermbg=NONE ctermfg=15   guibg=NONE guifg=#ffffff

	" Comment and Todo: keywords TODO FIXME and XXX
	hi Comment        ctermbg=NONE ctermfg=188  guibg=NONE guifg=#b0bec5
	hi Todo           ctermbg=NONE ctermfg=15   guibg=NONE guifg=#ffffff

	"Underlined	text that stands out, HTML links
	hi Underlined     ctermbg=NONE ctermfg=66   guibg=NONE guifg=#5f8787 cterm=underline gui=underline

	" Error: any erroneous construct
	hi Error          ctermbg=NONE ctermfg=162  guibg=NONE guifg=#f36c60 cterm=reverse gui=reverse

	hi Cursor         ctermbg=208  ctermfg=0	guibg=#ff9800 guifg=#000000
	hi CursorColumn   ctermbg=237  ctermfg=NONE guibg=#3a3a3a guifg=NONE
	hi CursorLineNr   ctermbg=NONE ctermfg=10   guibg=NONE    guifg=#9ccc65
	hi CursorLine     ctermbg=237  ctermfg=NONE guibg=#3a3a3a guifg=NONE cterm=NONE

	" Diff mode
	hi diffAdd        ctermbg=NONE ctermfg=10   guibg=#437019 guifg=#D2EBBE
	hi diffChange     ctermbg=NONE ctermfg=159  guibg=#2b5b77 guifg=NONE
	hi diffDelete     ctermbg=NONE ctermfg=162  guibg=#700009 guifg=#40000A
	hi DiffText       ctermbg=237  ctermfg=217  guibg=#000000 guifg=#8fbfdc gui=reverse

	" Patch files
	hi diffAdded      ctermbg=NONE ctermfg=10   guibg=NONE    guifg=#8bc34a
	hi diffChanged    ctermbg=NONE ctermfg=159  guibg=NONE    guifg=#ff5722
	hi diffRemoved    ctermbg=NONE ctermfg=162  guibg=NONE    guifg=#f36c60

	hi IncSearch      ctermbg=131  ctermfg=10   guibg=NONE	  guifg=#8bc34a
	hi Search		  ctermbg=10   ctermfg=15   guibg=#8bc34a guifg=#ffffff

	hi Pmenu          ctermbg=237  ctermfg=15   guibg=#3a3a3a guifg=#ffffff
	hi PmenuSbar      ctermbg=188  ctermfg=NONE guibg=#b0bec5 guifg=NONE
	hi PmenuSel       ctermbg=159  ctermfg=240  guibg=#84ffff guifg=#555555
	hi PmenuThumb     ctermbg=159  ctermfg=159  guibg=#84ffff guifg=#84ffff

	hi StatusLine     ctermbg=237  ctermfg=15   guibg=#3a3a3a guifg=#ffffff gui=NONE
	hi StatusLineNC   ctermbg=237  ctermfg=15   guibg=#3a3a3a guifg=#ffffff cterm=NONE gui=italic

	hi TabLine        ctermbg=237  ctermfg=15   guibg=#3a3a3a guifg=#ffffff
	hi TabLineFill    ctermbg=237  ctermfg=237  guibg=#3a3a3a guifg=#3a3a3a
	hi TabLineSel     ctermbg=15   ctermfg=240  guibg=#ffffff guifg=#555555

	hi Visual         ctermbg=240  ctermfg=NONE guibg=#555555 guifg=NONE
	hi VisualNOS      ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=underline gui=underline

	" Write good
	hi SpellBad   guisp=#bc6c4c guifg=NONE ctermfg=202  ctermbg=237 cterm=NONE gui=undercurl
	hi SpellCap   guisp=#6c6c9c guifg=NONE ctermfg=141  ctermbg=237 cterm=undercurl gui=undercurl
	hi SpellRare  guisp=#bc6c9c guifg=NONE ctermfg=202  ctermbg=237 cterm=NONE gui=undercurl
	hi SpellLocal guisp=#7cac7c guifg=NONE ctermfg=108  ctermbg=237 cterm=undercurl gui=undercurl

	" Menus, etc ...
	hi Directory        ctermbg=NONE ctermfg=159   guibg=NONE    guifg=#84ffff
	hi ErrorMsg         ctermbg=131  ctermfg=162   guibg=NONE    guifg=#f36c60
	hi ModeMsg          ctermbg=0    ctermfg=228   guibg=#263238 guifg=#fff59d
	hi MoreMsg          ctermbg=NONE ctermfg=159   guibg=NONE    guifg=#84ffff
	hi Question         ctermbg=NONE ctermfg=117   guibg=NONE    guifg=#4dd0e1
	hi Title            ctermbg=NONE ctermfg=141   guibg=NONE    guifg=#b39ddb
	hi VertSplit        ctermbg=237  ctermfg=237   guibg=#3a3a3a guifg=#3a3a3a
	hi WarningMsg       ctermbg=NONE ctermfg=208   guibg=NONE    guifg=#ff9800
	hi helpLeadBlank    ctermbg=NONE ctermfg=NONE  guibg=NONE    guifg=NONE
	hi helpNormal       ctermbg=NONE ctermfg=NONE  guibg=NONE    guifg=NONE
endif

hi link htmlEndTag               htmlTagName
hi link htmlLink                 Function
hi link htmlSpecialTagName       htmlTagName
hi link htmlTag                  htmlTagName
hi link htmlBold                 Normal
hi link htmlItalic               Normal
hi link xmlTag                   Statement
hi link xmlTagName               Statement
hi link xmlEndTag                Statement
