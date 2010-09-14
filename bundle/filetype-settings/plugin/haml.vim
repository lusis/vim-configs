augroup Haml
        au!
        au FileType haml set ai si ts=4 et sts=4 sw=4 sta number
        au FileType haml highlight BadWhitespace ctermbg=red guibg=red
        au FileType haml match BadWhitespace /^\t\+/
        au FileType haml match BadWhitespace /\s\+$/
	au FileType haml inoremap # X<c-h>#
	highlight OverLength ctermbg=red ctermfg=white guibg=#592929
	au Filetype haml match OverLength /\%81v.\+/
        let python_highlight_all = 1
        if (has('gui_running'))
                au FileType haml colorscheme glade
                map <S-Insert> <MiddleMouse>
                map! <S-Insert> <MiddleMouse>
        else
                au FileType haml colorscheme glade
        endif
augroup END
