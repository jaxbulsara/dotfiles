" Language settings

" ALE
let g:ale_lint_on_insert_leave = 1
let g:ale_fix_on_save = 1

let g:ale_fixers = {
            \ '*': [
                \ 'remove_trailing_lines',
                \ 'trim_whitespace',
                \ ],
            \ 'javascript': ['prettier', 'eslint'],
            \ 'javascriptreact': ['prettier', 'eslint'],
            \ 'typescript': ['prettier', 'eslint'],
            \ 'typescriptreact': ['prettier', 'eslint'],
            \ 'css':    ['prettier', 'eslint'],
            \ 'html':   ['prettier', 'eslint'],
            \ 'python': ['autoflake', 'isort', 'black'],
            \ 'rust':   ['rustfmt'],
            \ 'elixir': ['mix_format'],
            \ 'perl':   ['perltidy'],
            \ 'kotlin': ['ktlint'],
            \ 'sh': ['shfmt']
            \ }
let g:ale_linters = {
            \ 'rust': ['analyzer'],
            \ 'xml':    ['android'],
            \ 'groovy': ['android'],
            \ 'java':   ['android', 'checkstyle', 'eclipselsp'],
            \ 'kotlin': ['android', 'ktlint', 'languageserver'],
            \ 'sh': ['shellcheck']
            \ }

" Android
let g:gradle_loclist_show = 0
let g:gradle_show_signs = 0

" Java
let g:ale_java_eclipselsp_path = '/home/jay/.local/bin/eclipse.jdt.ls-1.21.0'

" Kotlin
let g:ale_kotlin_ktlint_options = '--code-style=android_studio --log-level=none'
let g:ale_kotlin_languageserver_executable = '/home/jay/.local/share/kotlinlsp/server/build/install/server/bin/kotlin-language-server'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Python
let g:jedi#popup_on_dot = 0

" Shell
let g:ale_sh_shfmt_options='-i 2'
