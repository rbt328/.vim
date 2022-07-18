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
set laststatus=2
set list listchars=tab:»\ ,trail:·
set foldmethod=syntax foldlevel=99 foldcolumn=0
set timeout timeoutlen=3000 ttimeoutlen=100
set viminfo=%,'100,<1000,s100,h
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,latin1
set mouse=nv
set tags=./tags;tags
set path=.,/usr/include,,**
set cscopequickfix=s-,c-,d-,i-,t-,e-
set omnifunc=syntaxcomplete#Complete
set completeopt=menuone,preview
set t_Co=256
set background=dark
syntax on
filetype on
filetype plugin on

"shortcut
set pastetoggle=<F2>
nnoremap <silent> <F3> :set number! list!<CR>
nnoremap <silent> <F4> :let &foldcolumn = (&foldcolumn ? 0 : 4)<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
nnoremap <C-n> :cnext<CR>
nnoremap <C-p> :cprev<CR>
nnoremap <Leader>v viw"0p
vnoremap <Leader>v "0p
inoremap <C-e> <End>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"plugin
let g:PaperColor_Theme_Options = {'language': {
  \   'python': {'highlight_builtins' : 1},
  \   'cpp': {'highlight_standard_library': 1},
  \   'c': {'highlight_builtins' : 1}
  \ }}
colorscheme PaperColor

let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<C-b>'

nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1

"macOS
if has("mac")
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif
endif
