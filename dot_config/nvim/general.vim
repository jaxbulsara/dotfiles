" General tmux settings

" Enable line numbers
set number

" Don't highlight search results
set nohlsearch

" Tab settings
set tabstop=4
set shiftwidth=4
set expandtab

" Line and column coloring
set cursorline
set colorcolumn=80

" Disable mouse clicks
set mouse=

" Supertab settings
set omnifunc=ale#completion#OmniFunc
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" Python3 support
let g:python3_host_prog = "/home/jay/.pyenv/shims/python3"
