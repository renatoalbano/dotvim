map <leader>f :CtrlP<CR>
set wildignore+=*/tmp/*,*/log/*,*.so,*.swp,*.zip,.git/*,.ideia/*,node_modules/*     " MacOSX/Linux
let g:ctrlp_extensions = ['funky']
nnoremap <Leader>x :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>X :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](doc|tmp|coverage|dist|target|.git|pack/vendor/opt|pack/vendor/start|*/tmp/*|*/log/*|*/node_modules/*)',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
