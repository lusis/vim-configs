augroup Ruby
        au!
        au FileType ruby set ai si ts=2 sw=2 sts=2 sta et fo=croq
        au FileType ruby set foldenable foldmethod=syntax
        if (has('gui_running'))
                au FileType ruby colorscheme ir_black
                map <S-Insert> <MiddleMouse>
                map! <S-Insert> <MiddleMouse>
        else
                au FileType ruby colorscheme ir_black
        endif
augroup END
