function! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d et sw=%d sts=%d sta filetype=%s :",
        \ &tabstop, &shiftwidth, &softtabstop, &filetype)
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endfunction
nnoremap <silent> <Leader>ml :call AppendModeline()<CR>
