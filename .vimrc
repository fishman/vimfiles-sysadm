set nocompatible        " use vim as vim, put at the very start
set fenc=utf-8          " character encoding for file of the buffer
filetype plugin indent on      " enable filetype plugin
syntax enable           " enable syntax hl
color desert
set confirm             " raise a confirm dialog for changed buffer
set hidden
set wildmenu
set visualbell
set laststatus=2
set hlsearch
set noerrorbells
set showmatch
set pastetoggle=<F6>    " when pasting something in, don't indent

" forget to use sudo to launch vim
command! -bar -nargs=0 Sudow :silent exe "w !sudo tee % > /dev/null" | silent edit!

let mapleader = ","     " set mapleader, then <leader> will be ,
let g:mapleader = ","
let maplocalleader = ","     " set mapleader, then <leader> will be ,

imap <M-o> <Esc>o
imap jk <Esc>

map <leader>bw :bw<cr>

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
let g:ctrlp_working_path_mode = 2

""""""""""""""""""""""""""""""
" => tagbar.vim
""""""""""""""""""""""""""""""
nnoremap <silent> <F4> :TagbarToggle<CR>
