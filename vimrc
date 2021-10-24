set cindent
set tabstop=4
set shiftwidth=4
set ttimeoutlen=0
set ignorecase
set smartcase
set incsearch
set hlsearch
set showcmd
set ruler
set number
set list
set listchars=tab:»\ ,trail:·
set fileencodings=ucs-bom,utf-8,chinese,latin1
set viminfo=%,'100,<50,s10,h

"shortcut
set pastetoggle=<F2>
nnoremap <F3> :nohlsearch<CR>
nnoremap <F4> :set number! list!<CR>
nnoremap <C-p> "0p
inoremap <C-e> <End>

"color
syntax on
colorscheme desert
highlight SpecialKey ctermfg=DarkBlue
highlight TabLineFill ctermfg=Black ctermbg=Black
highlight TabLineSel ctermfg=Black ctermbg=White

"auto-pairs
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<C-b>'
