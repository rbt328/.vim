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
set autowrite
set scrolloff=0
set laststatus=2
set backspace=indent,eol,start
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
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<C-b>'
let Tlist_Use_Right_Window = 1
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let g:Lf_WorkingDirectoryMode = 'AF'
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_ShortcutF = '<C-P>'
noremap <silent> <Leader>m :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <silent> <Leader>f :<C-U><C-R>=printf("Leaderf function %s", "")<CR><CR>
noremap <silent> <Leader>w :<C-U><C-R>=printf("Leaderf window %s", "")<CR><CR>
noremap <silent> <Leader>q :<C-U><C-R>=printf("Leaderf quickfix %s", "")<CR><CR>
noremap <silent> <Leader>l :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <silent> <Leader>g :<C-U><C-R>=printf("Leaderf gtags %s", "")<CR><CR>
noremap <silent> <Leader>d :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <silent> <Leader>r :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <silent> <Leader>s :<C-U><C-R>=printf("Leaderf! gtags -s %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <silent> <Leader>o :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <silent> <Leader>e :<C-U><C-R>=printf("Leaderf! rg %s", expand("<cword>"))<CR><CR>

"shortcut
set pastetoggle=<F2>
nnoremap <silent> <F4> :set number! list!<CR>
nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
nnoremap <silent> <C-g> :<C-u>nohlsearch<CR><C-g>
nnoremap <silent> <C-h> :tabp<CR>
nnoremap <silent> <C-l> :tabn<CR>
nnoremap <silent> <C-j> :cnext<CR>
nnoremap <silent> <C-k> :cprev<CR>
nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T
nnoremap <Leader>cs :cs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <Leader>cc :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <Leader>ct :cs find t <C-R>=expand("<cword>")<CR><CR>
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
