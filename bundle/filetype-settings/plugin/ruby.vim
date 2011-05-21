augroup Ruby
        au!
        au FileType ruby set ai si ts=2 sw=2 sts=2 sta et fo=croq
        au FileType ruby set foldenable foldmethod=syntax
        if (has('gui_running'))
                map <S-Insert> <MiddleMouse>
                map! <S-Insert> <MiddleMouse>
        endif
	compiler ruby
augroup END
