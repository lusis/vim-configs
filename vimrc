" Do not remove the following 4 lines
filetype off 
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"------------------------------------------

" Okay, you can start changing stuff now
" Basic stuff
"" Things you might want to change
colorscheme molokai " Default colorscheme
set background=dark

"" You probably don't want to change these
set hidden
syntax on
set t_Co=256
set ic
set hls
set lbr
set nocompatible
" These affect viewports
"" Split windows equally
set equalalways
"" New vertical splits to the right of current
"" New horizontal splits below current
set splitright splitbelow
"" Change the leader from \ to ,
"""let mapleader="\"
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
