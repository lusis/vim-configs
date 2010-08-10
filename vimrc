" Do not remove the following 4 lines
filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"------------------------------------------

" Okay, you can start changing stuff now
" Basic stuff

"" Hide the opening vim text
set hidden
"" Dark background
set background=dark
"" Syntax highlighting by default
syntax on
"" 256 colors in terminal mode
set t_Co=256
"" Default colorscheme
colorscheme vividchalk
"" Ignore case in search
set ic
"" highlight in search
set hls
set lbr
set nocompatible
" These affect viewports
"" Split windows equally
set equalalways
"" New vertical splits to the right of current
"" New horizontal splits below current
set splitright splitbelow
