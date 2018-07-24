set nocompatible
scriptencoding utf-8
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8
filetype off

set showmatch
set wrap
set number
set showmode
set showcmd
set ruler
set smartindent
set ignorecase
set autoindent " 改行時に前の行のインデントを継続する

"Escをjj
inoremap <silent> jj <ESC>

set backspace=indent,eol,start

set t_Co=256 " iTerm2など既に256色環境なら無くても良い
syntax enable " 構文に色を付ける

"----NeoBundle----
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
	set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" カラースキームmolokai
NeoBundle 'tomasr/molokai'

"インデントの可視化
NeoBundle 'Yggdroot/indentLine'
let g:indentLine_char = '¦'
set expandtab
set tabstop=2
set shiftwidth=2


" ステータスラインの表示内容強化
NeoBundle 'itchyny/lightline.vim'
set laststatus=2 " ステータスラインを常に表示
set showmode " 現在のモードを表示
set showcmd " 打ったコマンドをステータスラインの下に表示
set ruler " ステータスラインの右側にカーソルの現在位置を表示する

NeoBundle 'Shougo/neocomplcache'

call neobundle#end()

" molokaiがインストールされていればカラースキームにmolokaiを設定する
if neobundle#is_installed('molokai')
	colorscheme molokai
endif


" Required:
" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

" 未インストールのVimプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
NeoBundleCheck

"-----------------
