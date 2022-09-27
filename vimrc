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
set cscopequickfix=s-,c-,d-,i-,t-,e-
set t_Co=256
set background=dark

syntax on
filetype on
filetype plugin on

"shortcut
set pastetoggle=<F2>
nnoremap <silent> <F3> :set number! list!<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
nnoremap <Leader>v viw"0p
vnoremap <Leader>v "0p
nnoremap <Leader>a viw"ap
vnoremap <Leader>a "ap
nnoremap <Leader>z viw"zp
vnoremap <Leader>z "zp
inoremap <C-e> <End>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"plugin
call plug#begin()
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

let g:PaperColor_Theme_Options = {'language': {
  \   'python': {'highlight_builtins' : 1},
  \   'cpp': {'highlight_standard_library': 1},
  \   'c': {'highlight_builtins' : 1}
  \ }}
colorscheme PaperColor

let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<C-b>'

noremap <C-P> :GFiles<CR>
noremap <leader>t :Files<CR>
noremap <leader>f :BTags<CR>
noremap <leader>q :BLines<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>w :Windows<CR>

let g:fzf_action = {'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-]': 'vsplit'}

"macOS
if has("mac")
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif
endif
