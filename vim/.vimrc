syntax on
set expandtab
set tabstop=4
set background=dark
set ai
set colorcolumn=81
set ruler
highlight ColorColumn ctermbg=0

" don't expand tabs to spaces for XML templates
if expand('%:t') =~ '.*\.xml\.erb$'
    set expandtab!
    set tabstop=8
    set sw=8
endif

" set tabstop to 2 for ruby files
if expand('%:t') =~ '.*\.rb$'
    set tabstop=2
    set sw=2
endif

" map ctrl+p to toggle between paste mode
" useful when autoident is set so we don't mangle our pasted
" input that has tabs/spaces
map <c-p> :set invpaste!<ENTER>

" set word wrap at 72 characters if we're editing a git commit
if expand('%t') =~ 'COMMIT_EDITMSG$'
    set tw=72
    set colorcolumn=73
endif

" code folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
