vmap Q gq
nmap Q gqap
" Function key mappings
"" F1 to display NERDTree and move back to the buffer you were working on
map <f1> :NERDTreeToggle\|wincmd p<cr>
"" F2 to display Taglist window
map <f2> :TlistToggle<CR>
"" F3 to add current buffer to vcs
map <f3> :VCSAdd<CR>
"" F4 to commit changes 
map <f4> :VCSCommit<CR>
"" F5 to show status of VCS
map <f5> :VCSStatus<CR>
"" F6 to enter pastemode
set pastetoggle=<F6>
" Shortcut key mappings
nnoremap TT :TlistToggle<CR>
"" Clear current search
nmap <silent> <leader>/ :nohlsearch<CR>
"" Stole these straight up from Fletcher Nichol
nmap <leader>js :%!python -m json.tool<cr>:%s/ \{4\}/  /<cr>:noh<cr>gg
nmap <leader>xml :%!xmllint --format -<cr>
"" Preserve selection after indentation
vmap > >gv
vmap < <gv
"" Map tab to indent in visual mode
vmap <Tab> >gv
vmap <S-Tab> <gv

