call plug#begin('~/.config/nvim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'vim-scripts/taglist.vim'
Plug 'majutsushi/tagbar'
Plug 'universal-ctags/ctags'
Plug 'scrooloose/nerdcommenter'
Plug 'portante/cscope'
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'mhinz/vim-startify'
Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'
Plug 'tmhedberg/simpylfold'
Plug 'kshenoy/vim-signature'
Plug 'AndrewRadev/switch.vim'
"Markdown"
Plug 'godlygeek/tabular'
Plug 'SirVer/ultisnips',{'for':'markdown'}
Plug 'mzlogin/vim-markdown-toc'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Common base
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
syntax enable
syntax on
set number
set hlsearch
set ignorecase "Ignore case when searching
set cursorline

filetype on
filetype plugin on
filetype indent on
set tabstop=4
set shiftwidth=4
set autoindent
set nobackup
set noswapfile
set autoread
set autowrite
set backspace=2
set ignorecase
set incsearch
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set langmenu=zh_CN.UTF-8
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set report=0

inoremap [ []<Esc>i
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
inoremap ,, <Esc>6ha
inoremap .. <Esc>6la

inoremap { {<CR>}<Esc>O
map - ddp
map = dd2kp
	
"colorscheme default 
"colorscheme darkblue
"colorscheme delek
"colorscheme desert
"colorscheme elflord
"colorscheme evening
"colorscheme industry
"colorscheme koehler
"colorscheme morning
"colorscheme murphy
"colorscheme pablo
"colorscheme peachpuff
"colorscheme ron
"colorscheme shine
"colorscheme slate
"colorscheme torte
"colorscheme zellner


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>Lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = { 'colorscheme': 'powerline', }
"let g:lightline = { 'colorscheme': 'powerlineish', }
"let g:lightline = { 'colorscheme': 'wombat', }
"let g:lightline = { 'colorscheme': 'OldHope', }
"let g:lightline = { 'colorscheme': 'PaperColor dark', }
"let g:lightline = { 'colorscheme': 'PaperColor light', }
"let g:lightline = { 'colorscheme': 'Tomorrow', }
"let g:lightline = { 'colorscheme': 'Tomorrow Night', }
"let g:lightline = { 'colorscheme': 'Tomorrow Night Blue', }
"let g:lightline = { 'colorscheme': 'Tomorrow Night Bright', }
"let g:lightline = { 'colorscheme': 'Tomorrow Night Eighties', }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F6> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>vim-easy-align
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
let g:easy_align_delimiters = {
\ '>': { 'pattern': '>>\|=>\|>'  },
\ '/': {
\     'pattern':         '//\+\|/\*\|\*/',
\     'delimiter_align': 'l',
\     'ignore_groups':   ['!Comment'] },
\ ']': {
\     'pattern':       '[[\]]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ ')': {
\     'pattern':       '[()]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ 'd': {
\     'pattern':      ' \(\S\+\s*[;=]\)\@=',
\     'left_margin':  0,
\     'right_margin': 0
\   }
\ }

"vmap <Leader>a <Plug>(EasyAlign)
"nmap <Leader>a <Plug>(EasyAlign)
"if !exists('g:easy_align_delimiters')
  "let g:easy_align_delimiters = {}
"endif
"let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F4> :TlistToggle<CR>
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Process_File_Always = 1
let Tlist_Display_Prototype = 0
let Tlist_Compact_Format = 1
let Tlist_Use_SingleClick=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F5> :TagbarToggle<CR>
let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=40

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" =>Nerdcommenter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
"map list showing as blew:
"n  ,ca           <Plug>NERDCommenterAltDelims
"x  ,cu           <Plug>NERDCommenterUncomment
"n  ,cu           <Plug>NERDCommenterUncomment
"x  ,cb           <Plug>NERDCommenterAlignBoth
"n  ,cb           <Plug>NERDCommenterAlignBoth
"x  ,cl           <Plug>NERDCommenterAlignLeft
"n  ,cl           <Plug>NERDCommenterAlignLeft
"n  ,cA           <Plug>NERDCommenterAppend
"x  ,cy           <Plug>NERDCommenterYank
"n  ,cy           <Plug>NERDCommenterYank
"x  ,cs           <Plug>NERDCommenterSexy
"n  ,cs           <Plug>NERDCommenterSexy
"x  ,ci           <Plug>NERDCommenterInvert
"n  ,ci           <Plug>NERDCommenterInvert
"n  ,c$           <Plug>NERDCommenterToEOL
"x  ,cn           <Plug>NERDCommenterNested
"n  ,cn           <Plug>NERDCommenterNested
"x  ,cm           <Plug>NERDCommenterMinimal
"n  ,cm           <Plug>NERDCommenterMinimal
"x  ,c<Space>     <Plug>NERDCommenterToggle
"n  ,c<Space>     <Plug>NERDCommenterToggle
"x  ,cc           <Plug>NERDCommenterComment
"n  ,cc           <Plug>NERDCommenterComment


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>rainbow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level= 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>coc.nvim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"inoremap <silent><expr> <c-space> coc#refresh()

let g:coc_global_extensions = [
	\ 'coc-actions',
	\ 'coc-explorer',
	\ 'coc-flutter-tools',
	\ 'coc-gitignore',
	\ 'coc-html',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-prettier',
	\ 'coc-pyright',
	\ 'coc-python',
	\ 'coc-snippets',
	\ 'coc-sourcekit',
	\ 'coc-stylelint',
	\ 'coc-syntax',
	\ 'coc-tsserver',
	\ 'coc-vimlsp',
	\ 'coc-vetur',
	\ 'coc-yaml',
	\ 'coc-yank']

inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()

" Useful commands
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap tt :CocCommand explorer<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>SimpylFold
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SimpylFold_docstring_preview = 1
