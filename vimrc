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
set guifont=Droid\ Sans\ Mono\ 9
set gcr=a:block-Cursor-blinkwait750-blinkoff750-blinkon750

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
	au FileType python set ai si ts=4 et sts=4 sw=4 sta fo=croq
	au FileType python set foldenable foldmethod=indent
	au FileType python highlight BadWhitespace ctermbg=red guibg=red
	au FileType python match BadWhitespace /^\t\+/
	au FileType python match BadWhitespace /\s\+$/
	let python_highlight_all = 1
	        if (has('gui_running'))
		au FileType python colorscheme railscasts
                map <S-Insert> <MiddleMouse>
                map! <S-Insert> <MiddleMouse>
        else
                au FileType python colorscheme railscast-console
        endif
        au FileType python inoremap # X^H#
augroup END

function! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d et sw=%d sts=%d sta filetype=%s :",
        \ &tabstop, &shiftwidth, &softtabstop, &filetype)
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endfunction
nnoremap <silent> <Leader>ml :call AppendModeline()<CR>
