" ====== basic settings =====
inoremap jj <ESC>
set nu
set relativenumber
filetype on
set history=1000
set nocompatible
set shiftwidth=4
syntax on
set ignorecase smartcase
set autoindent
set smartindent
set tabstop=4
set showmatch
set guioptions-=T
set vb t_vb=
set hlsearch
set ruler
set incsearch

let mapleader="\<SPACE>"

nmap <TAB> gt
nmap <S-TAB> gT

"=====  vim color scheme ======

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

set background=dark

" ======= Plugin ========

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()		
" 此处添加所要安装的Vim插件, 插件需在begin、end之间

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'elzr/vim-json'

call vundle#end()
filetype plugin indent on

map <LEADER>e :NERDTreeToggle<CR>


" ====== Plugin configuration ======

let g:tcomment_textobject_inlinecomment = ''
nmap <LEADER>cn g>c
vmap <LEADER>cn g>
nmap <LEADER>cu g<c
vmap <LEADER>cu g<

set laststatus=2
"永远显示状态栏
let g:airline_powerline_fonts = 1  
" 支持 powerline 字体
let g:airline#extensions#tabline#enabled = 1 
" 显示窗口tab和buffer
" let g:airline_theme='moloai'  
" murmur配色不错
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '-'
let g:airline_symbols.branch = '⎇'
