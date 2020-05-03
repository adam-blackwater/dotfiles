set nocompatible        " be iMproved, required

" Plugins 
set rtp+=~/.vim/bundle/Vundle.vim           " add Vundle to runtime path 
call vundle#begin()                         
Plugin 'VundleVim/Vundle.vim'                    

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Editing 
" Plugin 'tpope/vim-commentary'
Plugin 'dense-analysis/ale'

" Visual 
"Plugin 'Yggdroot/indentLine'

" Other
Plugin 'nicwest/vim-http'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'lervag/vimtex'
Plugin 'mileszs/ack.vim'

"Plugin 'syntastic'
call vundle#end()            
filetype plugin indent on   

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" colours
let g:gruvbox_guisp_fallback = "bg"             " turns on spelling highlighting
colorscheme gruvbox
set bg=dark

" Search
set hlsearch                                    " highlight search terms
set incsearch                                   " highlight with each key stroke 
nnoremap <cr> :nohlsearch <cr>

" Spell
set dictionary+=/usr/share/dict/words
set spellfile=~/.vim/spell/en.utf-8.add
setlocal spell spelllang=en_gb
set nospell

" Movement
nnoremap B ^                                    " move to beginning of line
nnoremap E $                                    " move to end of line
nnoremap $ <nop>                                " unbind
nnoremap ^ <nop>                                " unbind
nnoremap gV `[v`]                               " highlight last inserted text
inoremap jj <esc>

" Buffer Switching
map <leader>t :bNext <cr>
map <leader>b :bprevious <cr>
nnoremap <C-c> :bp\|bd # <cr>

" Text formatting
" set tw=80

" nmap
nmap \ dd                                       " nmap

" vmap
vmap \ U                                        "vmap

"imap

" Syntax 
syntax enable                                   " enable syntax processing
"syntax on

" Tabs & Spaces
set tabstop=4                                   " number of visual spaces per TAB
set softtabstop=4                               " number of spaces in tab when editing
set expandtab                                   " tabs are spaces
set shiftwidth=4

" Visual 
"set relativenumber                             " :set rnu! == toggle relative number
set number
set showcmd
set wildmenu                                    " visual autocomplete for command menu
filetype indent on                              " load filetype-specific indent files
set lazyredraw                                  " redraw only when we need to
set showmatch                                   " highlight matching [{()}]

" Folding 
set foldenable                                  " enable folding
set foldlevelstart=10                           " open most folds by default
set foldnestmax=10                              " 10 nested fold max
nnoremap <space> za                             " space open/closes folds
set foldmethod=indent                           " fold based on indent level

" Work space
let &winheight=&lines * 7 / 10                  "sets min num of lines of current window
set splitbelow splitright
noremap <silent> <C-Left> :vertical resize +3 <cr>
noremap <silent> <C-Right> :vertical resize -3 <cr>
noremap <silent> <C-Down> :resize -3 <cr>
"map <leader>th <C-w>t<C-w>H
"map <leader>tk <C-w>t<C-w>K
"map <leader>tt :terminal <cr>

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
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

" Flake8
"let g:syntastic_python_checkers = ['pylint']
"let g:syntastic_aggregate_errors = 1
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Update sign column every quarter second to make vim-gitgutter signs update
" at shorter intervals 
set updatetime=250

set undofile " maintain undo history between session
set undodir=~/.vim/undo

" Git-Fugative 
" Show commits for every source line git-fugative
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>ga :Git add<CR>
nnoremap <Leader>gs :Git status <CR>
