augroup JSON
        au!
        au FileType json set ai si ts=2 et sts=2 sw=2 sta number
        if (has('gui_running'))
                map <S-Insert> <MiddleMouse>
                map! <S-Insert> <MiddleMouse>
        endif
augroup END
