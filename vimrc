filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Basic stuff
set hidden

set background=dark
syntax on
set t_Co=256

set ic
set hls
set lbr
set nocompatible
set equalalways
set splitright splitbelow

" Keymaps
map <f1> :NERDTreeToggle\|wincmd p<cr>

" NERDTree Settings
let NERDChristmasTree = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
