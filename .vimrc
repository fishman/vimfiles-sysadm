set nocompatible        " use vim as vim, put at the very start
set fenc=utf-8          " character encoding for file of the buffer
filetype plugin indent on      " enable filetype plugin
syntax enable           " enable syntax hl
set confirm             " raise a confirm dialog for changed buffer
set pastetoggle=<F6>    " when pasting something in, don't indent

" forget to use sudo to launch vim
command! -bar -nargs=0 Sudow :silent exe "w !sudo tee % > /dev/null" | silent edit!

imap <M-o> <Esc>o

" switch to current dir
map <leader>cd :cd %:p:h<cr>

call pathogen#infect()

""""""""""""""""""""""""""""""
" => NERD_commenter.vim
""""""""""""""""""""""""""""""
let g:NERDComLineMap = ''
let g:NERDSpaceDelims = 1

""""""""""""""""""""""""""""""
" => NERD_tree.vim
""""""""""""""""""""""""""""""
"noremap <C-E><C-E> :NERDTreeToggle<CR>
nmap <silent> <F3> :execute 'NERDTreeToggle ' . fnameescape(getcwd())<CR>
let g:NERDTreeHijackNetrw = 0

""""""""""""""""""""""""""""""
" => ctrlp.vim
""""""""""""""""""""""""""""""
noremap <silent> <leader>t :CtrlP<CR>

""""""""""""""""""""""""""""""
" => tagbar.vim
""""""""""""""""""""""""""""""
nnoremap <silent> <F4> :TagbarToggle<CR>
