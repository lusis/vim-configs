augroup Haml
        au!
        au FileType haml set ai si ts=2 et sts=2 sw=2 sta number
        au FileType haml highlight BadWhitespace ctermbg=red guibg=red
        au FileType haml match BadWhitespace /^\t\+/
        au FileType haml match BadWhitespace /\s\+$/
	au FileType haml inoremap # X<c-h>#
	highlight OverLength ctermbg=red ctermfg=white guibg=#592929
	au Filetype haml match OverLength /\%81v.\+/
        let python_highlight_all = 1
        if (has('gui_running'))
                map <S-Insert> <MiddleMouse>
                map! <S-Insert> <MiddleMouse>
        endif
augroup END
