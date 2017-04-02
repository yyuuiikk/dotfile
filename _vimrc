"---基本設定
set tabstop=4
set autoindent
set nu
set shiftwidth=4
"--保存時の文字コード
set fileencoding=utf-8
"--読み込み時の文字コードの自動判別. 左側が優先される
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
"--改行コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac
"--□や○文字が崩れる問題を解決
set ambiwidth=double
"--コマンドモードの補完と保存するコマンド履歴の数
set wildmenu
set history=5000
"--スワップファイルを作成しない
set noswapfile
"--自動補完の大文字小文字を無視
set ignorecase

"--C-W,sで横分割
nmap <C-W>s :sp<CR>
"--C-W,vで縦分割
nmap <C-W>v :vsp<CR>
"--<ESC>を2回クリックすることでハイライトをOFFにする
nmap <ESC><ESC> :noh<CR>


"---

"---NeoBundle設定
"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/yuta/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/yuta/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

"---個別にインストールしたもの
"---emmet-vim
NeoBundle 'mattn/emmet-vim'
"--キーバインド（Ctl+yの後に,を2回）
"
"---vim-javascript（Javascriptのシンタックス）
NeoBundle 'pangloss/vim-javascript'
"
"---vim-css3-syntax（cssのシンタックス）
NeoBundle 'hail2u/vim-css3-syntax'
"
"---html5（html5のシンタックス）
NeoBundle 'othree/html5.vim'
"
"---unite.vim
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc.vim'
"
"---vimfiler
NeoBundle 'Shougo/vimfiler'
"--vimfiler 書き込み設定
set modifiable
set write
"
"---quickrun
NeoBundle 'thinca/vim-quickrun'
"
"---カラースキーマ jellybeans
NeoBundle 'nanotech/jellybeans.vim'

syntax enable
hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c

"---

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()


"--カラースキーマ プラグインの指定
"---call neobundle#end() の後に書かないとエラーが表示される
colorscheme jellybeans

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

