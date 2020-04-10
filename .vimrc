" Vundle
set nocompatible        " be iMproved, required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'lervag/vimtex'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'syntastic'
Plugin 'vim-http'
Plugin 'dense-analysis/ale'
call vundle#end()            " required
filetype plugin indent on    " required
" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" colours
let g:gruvbox_guisp_fallback = "bg" " turns on spelling highlighting
colorscheme gruvbox
set bg=dark
" Search
set hlsearch            " highlight search terms
set incsearch           " highlight with each key stroke 
nnoremap <cr> :nohlsearch <cr>
" Spell
set dictionary+=/usr/share/dict/words
set spellfile=~/.vim/spell/en.utf-8.add
setlocal spell spelllang=en_gb
set nospell
" Movement
nnoremap B ^            " move to beginning of line
nnoremap E $            " move to end of line
nnoremap $ <nop>        " unbind
nnoremap ^ <nop>        " unbind
nnoremap gV `[v`]       " highlight last inserted text
" Leader Shortcuts
inoremap jj <esc>
map <leader>t :bNext <cr>
map <leader>b :bprevious <cr>
nnoremap <C-c> :bp\|bd # <cr>
" Colours 
syntax enable           " enable syntax processing
syntax on
" Tabs & Spaces
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set shiftwidth=4
" UI
"set relativenumber      " :set rnu! == toggle relative number
set number
set showcmd
set wildmenu            " visual autocomplete for command menu
filetype indent on      " load filetype-specific indent files
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]
" Folding 
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za     " space open/closes folds
set foldmethod=indent   " fold based on indent level
" Work space
let &winheight=&lines * 7 / 10 "winheight sets min num of lines of current window
" Vimtex
let g:vimtex_compiler_latexmk = {
                        \ 'backend' : 'jobs',
                        \ 'background' : 1,
                        \ 'build_dir' : 'build',
                        \ 'callback' : 1,
                        \ 'continuous' : 1,
                        \ 'executable' : 'latexmk',
                        \ 'options' : [
                        \   '-verbose',
                        \   '-file-line-error',
                        \   '-synctex=1',
                        \   '-interaction=nonstopmode',
                        \  ],
                        \ }
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers = ['pylint']
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"nmap
nmap \ dd
"vmap
vmap \ U
"imap
