filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Basic stuff
set hidden

set background=dark
syntax on
set t_Co=256
colorscheme vividchalk

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

augroup Ruby
	au!
	au FileType ruby set ts=2 sw=2 ai si
augroup END

augroup Python
	au!
	au FileType python set ts=4 sw=4 smarttab nu
	au FileType python highlight BadWhitespace ctermbg=red guibg=red
	au FileType python match BadWhitespace /^\t\+/
	au FileType python match BadWhitespace /\s\+$/
augroup END
