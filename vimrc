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
set list listchars=tab:»\ ,trail:·
set timeout timeoutlen=3000 ttimeoutlen=100
set fileencodings=ucs-bom,utf-8,chinese,latin1
set viminfo=%,'100,<50,s10,h

"shortcut
set pastetoggle=<F2>
nnoremap <F3> :set number! list!<CR>
nnoremap <F4> :exe 'set foldmethod=syntax foldlevel=99 foldcolumn=' . abs(&foldcolumn - 5)<CR>
nnoremap <CR> :nohlsearch<CR><CR>
nnoremap <C-p> "0p
inoremap <C-e> <End>

"color
syntax on
set background=dark
colorscheme PaperColor

"auto-pairs
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<C-b>'

"taglist
filetype on
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Use_Right_Window = 1
let Tlist_Close_On_Select = 1
let Tlist_Exit_OnlyWindow = 1

"macOS
if has("mac")
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif
endif
