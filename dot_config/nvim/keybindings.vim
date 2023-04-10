" Command settings

" Vimux keybindings
map <Leader>rp :VimuxPromptCommand<CR>
map <Leader>rl :VimuxRunLastCommand<CR>
map <Leader>ri :VimuxInspectRunner<CR>
map <Leader>rz :VimuxZoomRunner<CR>

" fuzzyfinder keybinding
nnoremap <C-F> :Files<CR>

" tmux navigation must be placed in lua/plugins.lua

" Simplify navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Move to 25% from top
function MoveSemiTop()
    execute "normal zz"
    let winid = win_getid()
    let steps = (nvim_win_get_cursor(0)[0]-getwininfo(winid)[0]['topline'])/2
    execute "normal ".steps."\<C-E>"
endfunction

nnoremap zZ :call MoveSemiTop()<CR>
