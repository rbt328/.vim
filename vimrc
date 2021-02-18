set cindent
set tabstop=4
set shiftwidth=4
set ttimeoutlen=0
set pastetoggle=<F2>
set ignorecase
set smartcase
set incsearch
set showcmd
set number
set list
set listchars=tab:»\ ,trail:·
set fileencodings=ucs-bom,utf-8,chinese,latin1

"shortcut
nnoremap <CR> :nohlsearch<CR><CR>
inoremap <C-e> <End>

"color
syntax on
colorscheme desert
highlight SpecialKey ctermfg=DarkBlue
highlight TabLineFill ctermfg=Black ctermbg=Black
highlight TabLineSel ctermfg=Black ctermbg=White

"taglist
filetype on
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Use_Right_Window = 1
let Tlist_Close_On_Select = 1
let Tlist_Exit_OnlyWindow = 1

"auto-pairs
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<C-b>'
