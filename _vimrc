"---基本設定
set tabstop=2
set autoindent
set nu
set shiftwidth=2
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
"--nmap <C-W>s :split<CR>
nmap ss :split<CR>
"--C-W,vで縦分割
"--nmap <C-W>v :vsplit<CR>
nmap vv :vsplit<CR>
"--<ESC>を2回クリックすることでハイライトをOFFにする
nmap <ESC><ESC> :noh<CR>


"---

"---dein設定



"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/vagrant/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/vagrant/.vim/dein')
  call dein#begin('/home/vagrant/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/vagrant/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  call dein#add('tpope/vim-fugitive')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('flazz/vim-colorschemes')

	"---syntax check
  call dein#add('vim-syntastic/syntastic')
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*

	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0
  
  "---個別にインストールしたもの
  "---emmet-vim
  call dein#add('mattn/emmet-vim')
  "--キーバインド（Ctl+yの後に,を2回）
  "
  "---vim-javascript（Javascriptのシンタックス）
  call dein#add('pangloss/vim-javascript')
  "
  "---vim-css3-syntax（cssのシンタックス）
  call dein#add('hail2u/vim-css3-syntax')
  "
  "---html5（html5のシンタックス）
  call dein#add('othree/html5.vim')
  "---ウインドウサイズ変更
  call dein#add('simeji/winresizer')
  
  "---unite.vim
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/vimproc', {'build': 'make'})
  "
  "---vimfiler
  call dein#add('Shougo/vimfiler')
  "--vimfiler 書き込み設定
  set modifiable
  set write
  "
  "---quickrun
  call dein#add('thinca/vim-quickrun')
  "---カラースキーマ jellybeans
  call dein#add('nanotech/jellybeans.vim')
  "
  syntax enable
  hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c
  "---
  "
  
  call dein#add('Shougo/vimshell')
  "let g:vimshell_execute_file_list['rb'] = 'ruby'
  "let $PATH="$HOME/.rbenv/shims:".$PATH
  
  "--カラースキーマ プラグインの指定
  "---call neobundle#end() の後に書かないとエラーが表示される
  colorscheme jellybeans


  "call dein#add('vim-pandoc/vim-pandoc')
  call dein#add('vim-pandoc/vim-pandoc-syntax')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
"
