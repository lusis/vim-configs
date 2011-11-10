augroup Gradle
        au!
	au BufNewFile,BufRead *.gradle setf groovy
        au FileType groovy set ai si ts=2 sw=2 sts=2 sta et fo=croq
        au FileType groovy set foldenable foldmethod=syntax
        if (has('gui_running'))
                map <S-Insert> <MiddleMouse>
                map! <S-Insert> <MiddleMouse>
        endif
augroup END
