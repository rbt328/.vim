set nocompatible
set cindent
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set incsearch
set hlsearch
set showcmd
set ruler
set number
set scrolloff=0
set laststatus=2
set list listchars=tab:»\ ,trail:·
set timeout timeoutlen=3000 ttimeoutlen=100
set viminfo=%,'100,<1000,s100,h
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,latin1
set path=.,/usr/include,,**
set tags=./tags;tags
set cscopequickfix=s-,c-,d-,i-,t-,e-
set t_Co=256
set background=dark

syntax on
filetype on
filetype plugin on
let g:PaperColor_Theme_Options = {'language': {
  \   'python': {'highlight_builtins' : 1},
  \   'cpp': {'highlight_standard_library': 1},
  \   'c': {'highlight_builtins' : 1}
  \ }}
colorscheme PaperColor

"plugin
call plug#begin()
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<C-b>'
noremap <silent> <C-P> :GFiles<CR>
noremap <silent> <Leader>b :Buffers<CR>
noremap <silent> <Leader>m :History<CR>
noremap <silent> <Leader>f :BTags<CR>
noremap <silent> <Leader>w :Windows<CR>
noremap <silent> <Leader>q :BLines<CR>
noremap <silent> <Leader>g :Tags<CR>
noremap <silent> <Leader>t :Files<CR>
let g:fzf_action = {'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-]': 'vsplit'}

"shortcut
set pastetoggle=<F2>
nnoremap <silent> <F3> :set number! list!<CR>
nnoremap <silent> <C-n> :<C-u>nohlsearch<CR><C-n>
nnoremap <silent> <C-h> :tabp<CR>
nnoremap <silent> <C-l> :tabn<CR>
nnoremap <silent> <C-j> :cnext<CR>
nnoremap <silent> <C-k> :cprev<CR>
nnoremap <Leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <Leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <Leader>v viw"0p
vnoremap <Leader>v "0p
nnoremap <Leader>a viw"ap
vnoremap <Leader>a "ap
nnoremap <Leader>z viw"zp
vnoremap <Leader>z "zp
inoremap <C-e> <End>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"macOS
if has("mac")
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif
endif
