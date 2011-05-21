augroup Python
        au!
        au FileType python set ai si ts=4 et sts=4 sw=4 sta fo=croq number
        au FileType python set foldenable foldlevel=1 foldmethod=indent
        au FileType python highlight BadWhitespace ctermbg=red guibg=red
        au FileType python match BadWhitespace /^\t\+/
        au FileType python match BadWhitespace /\s\+$/
	au FileType python inoremap # X<c-h>#
	au FileType python compiler pylint
	highlight OverLength ctermbg=red ctermfg=white guibg=#592929
	au Filetype python match OverLength /\%81v.\+/
        let python_highlight_all = 1
        if (has('gui_running'))
                map <S-Insert> <MiddleMouse>
                map! <S-Insert> <MiddleMouse>
        endif
augroup END
