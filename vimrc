set bg=dark
set autoindent
set fdm=marker
set hlsearch
set incsearch
set ruler
set backspace=indent,eol,start
"set foldmarker={,}
"set foldmethod=marker
set whichwrap=b,s,<,>
set mouse=a
set nobomb
highlight search term=bold ctermfg=black
syntax on
" colorscheme elflord
" colorscheme af
" colorscheme desert256


" This switches between mouse A and V
"   Author: Tom Hood (networkerror@gmail.com)
"   Date:   Mar. 21, 2006
map <silent> <F3> :call Mousev()<CR>
function! Mousev()
	echo "Mouse set to Visual mode."
	set mouse=v
endfunction

map <silent> <F4> :call Mousea()<CR>
function! Mousea()
	echo "Mouse set to All modes."
	set mouse=a
endfunction

" Tavish addded this
" Custom status line display
set ls=2 " Always show status line
if has('statusline')
    " Status line detail:
    " %f             file path
    " %y             file type between braces (if defined)
    " %([%R%M]%)     read-only, modified and modifiable flags between braces.
    " %{'!'[&ff=='default_file_format']}
    "                shows a '!' if the file format is not the platform default
    " %{'$'[!&list]} shows a '*' if in list mode
    " (%{synIDattr(synID(line('.'),col('.'),0),'name')})
    "                only for debug : display the current syntax item name
    " %=             right-align following items
    " #%n            buffer number
    " %l/%L,%c%V     line number, total number of lines, and column number
    function! SetStatusLineStyle()
        if &stl == '' || &stl =~ 'synID'
            let &stl="%f %y%([%R%M]%)%{'!'[&ff=='".&ff."']}%{'$'[!&list]}%=#%n %l/%L,%c "
        else
            let &stl="%f %y%([%R%M]%)%{'!'[&ff=='".&ff."']}%{'$'[!&list]}(%{synIDattr(synID(line('.'),col('.'),0),'name')})%=#%n %l/%L,%c "
        endif
    endfunc
    " Switch between the normal and vim-debug modes in the status line
    nmap _ds :call SetStatusLineStyle()<CR>
    call SetStatusLineStyle()
    " Window title
    if has('title')
        set titlestring=%t%(\ [%R%M]%)
    endif
endif
