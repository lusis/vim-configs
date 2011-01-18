augroup JSON
        au!
        au FileType json set ai si ts=2 et sts=2 sw=2 sta number
        if (has('gui_running'))
                au FileType json colorscheme glade
                map <S-Insert> <MiddleMouse>
                map! <S-Insert> <MiddleMouse>
        else
                au FileType json colorscheme glade
        endif
augroup END
