" Common options
syntax on
if executable('ag')
    set grepprg=ag\ --nogroup\ -iS
    set grepformat=%f:%l:%m
elseif executable('ack')
    set grepprg=ack\ --nogroup
    set grepformat=%f:%l:%m
else
    set grepprg=grep\ -Hnd\ skip\ -r
    set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m
endif
set iminsert=0
set imsearch=0
set listchars=eol:$,tab:>-
set ruler
set shortmess+=I
set visualbell
set scrolloff=2
set fileformats=unix,dos,mac " 改行コードの自動認識
"set showcmd
set number
set nocompatible
set clipboard+=unnamed
set wildmode=list:longest
set autoread
set showmode
set hidden
set noinsertmode
set showmode
set cmdheight=1
set nowrap
"set wrap
set laststatus=2
"set cmdheight=2
set showcmd
set title
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
"tab
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent

"edit
set smartindent
set showmatch
set backspace=indent,eol,start
set nolist

" search
set ignorecase
set smartcase
"set hlsearch
set hlsearch
set incsearch

" backup
set nobackup
set nowritebackup
set noswapfile
" □とか○の文字があってもカーソル位置がずれないようにする
set ambiwidth=double

"set encoding=utf8 "menu encoding...
set fileencoding=utf8

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

set nocompatible
filetype plugin indent off

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"

"-------------------------
" End Neobundle Settings.
"-------------------------

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'vim-scripts/twilight'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'vim-scripts/Wombat'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/rdark'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'rking/ag.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'kevinw/pyflakes-vim'

call neobundle#end()

" Required:
filetype plugin indent on



colorscheme molokai
highlight Normal ctermbg=none

filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=3 guibg=red
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=4 guibg=green
autocmd BufNewFile,BufRead *.py nnoremap <C-e> :!python %

