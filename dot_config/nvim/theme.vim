" Theme settings

" Configure status bar
" Disable native mode display
set noshowmode

" lightline settings
let g:lightline = {
            \ 'colorscheme': 'molokai',
            \ 'active': {
            \    'left': [
                        \ ['gradle_project', 'mode', 'paste'],
                        \ ['readonly', 'filename', 'modified'],
                        \ ],
            \    'right': [
                        \ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
                        \ ['gradle_running'], ['gradle_errors'], ['gradle_warnings'],
                        \ ['lineinfo'],
                        \ ['percent'],
                        \ ['fileformat', 'fileencoding', 'filetype'],
                        \]
            \ },
            \ 'component_expand': {
            \    'gradle_errors': 'lightline#gradle#errors',
            \    'gradle_warnings': 'lightline#gradle#warnings',
            \    'gradle_running': 'lightline#gradle#running',
            \    'gradle_project': 'lightline#gradle#project',
            \    'linter_checking': 'lightline#ale#checking',
            \    'linter_infos': 'lightline#ale#infos',
            \    'linter_warnings': 'lightline#ale#warnings',
            \    'linter_errors': 'lightline#ale#errors',
            \    'linter_ok': 'lightline#ale#ok',
            \ },
            \ 'component_type': {
            \    'gradle_errors': 'error',
            \    'gradle_warnings': 'warning',
            \    'gradle_running': 'right',
            \    'gradle_project': 'left',
            \    'linter_checking': 'right',
            \    'linter_infos': 'right',
            \    'linter_warnings': 'warning',
            \    'linter_errors': 'error',
            \    'linter_ok': 'right',
            \ }
            \ }

" Set color scheme
colorscheme monokai

" Set background transparent
hi Normal guibg=NONE ctermbg=NONE

" Python syntax highlighting
let g:python_highlight_all=1
