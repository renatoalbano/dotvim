let g:syntastic_mode_map = { 'mode': 'active',
                            \ 'active_filetypes': ['javascript'],
                            \ 'passive_filetypes': [] }

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslet g:vue_disable_pre_processors=1lineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" javascript
let g:syntastic_javascript_checkers = ['eslint', 'jshint']

" cpp
let g:syntastic_cpp_compiler = 'g++'
"let g:syntastic_cpp_compiler_options = ' -std=c++17 -stdlib=libc++'
let g:syntastic_cpp_compiler_options = ' -std=c++17'
