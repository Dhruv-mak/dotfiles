" a specific mappings and settings for vim-spector
fun GoToWindow(id)
  call win_gotoid(a:id)
  MaximizerToggle
endfun

" Debugger remaps
nnoremap <leader>m :MaximizerToggle!<CR>
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GoToWindow(g:vimspctor_session_windows.code)<CR>
nnoremap <leader>dt :call GoToWindow(g:vimspctor_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GoToWindow(g:vimspctor_session_windows.variables)<CR>
nnoremap <leader>dw :call GoToWindow(g:vimspctor_session_windows.watches)<CR>
nnoremap <leader>ds :call GoToWindow(g:vimspctor_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GoToWindow(g:vimspctor_session_windows.output)<CR>
nnoremap <leader>de :call vimspector#Reset()<CR>

nnoremap <leader>dtcb :call vimspector#cleanLineBreakpoint()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint
