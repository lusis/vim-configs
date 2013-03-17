" Do not remove the following 4 lines
"filetype off 
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
call pathogen#infect()
"------------------------------------------

" Okay, you can start changing stuff now
" Basic stuff
"" Things you might want to change
set nocompatible
colorscheme jellybeans
set background=dark
" Syntastic shit
let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_enable_balloons = 1
let g:syntastic_auto_jump=1
let g:syntastic_python_checker_args = '--disable=R0902,C0103,C0301,E1101,R0904'
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

"" You probably don't want to change these
set hidden
syntax on
filetype plugin indent on
set t_Co=256
set ic
set hls
set lbr
" These affect viewports
"" Split windows equally
set equalalways
"" New vertical splits to the right of current
"" New horizontal splits below current
set splitright splitbelow
let mapleader=","
"" Change tmp file path
set directory=~/.vim/swap,~/tmp,/var/tmp/,tmp
"" Change tags path
set tags=.tags,tags;/
"" Some administrivia
let g:SuperTabCrMapping = 0
"" supress warnings
set autoread
"" allow backspacing over everything
set backspace=indent,eol,start
"" we like big histories!
set history=1000
"" For colorized in 256 mode
let g:solarized_termcolors=256
