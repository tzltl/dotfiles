if &compatible
  set nocompatible
endif

  " Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
 if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
 endif

 call dein#load_toml('~/.config/nvim/dein.toml',{'lazy':0})
 call dein#load_toml('~/.config/nvim/dein_lazy.toml',{'lazy':1})

 call dein#add('vim-airline/vim-airline')
 call dein#add('vim-airline/vim-airline-themes')
 call dein#add('rafi/awesome-vim-colorschemes') 
 call dein#end()
 call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

let g:deoplete#enable_at_startup = 1

filetype plugin indent on
syntax enable

let g:airline#extensions#tabline#enabled = 1
set t_Co=256
"エンコーディング
set encoding=utf-8
scriptencoding utf-8

"vi互換をオフ
"set nocompatible

"カーソル位置表示
set ruler
"行番号表示
set number

"行番号の色や現在行の設定
"autocmd ColorScheme * highlight LineNr ctermfg=12
autocmd ColorScheme * highlight Normal ctermbg=0
"autocmd ColorScheme * highlight Normal ctermbg=233
"highlight CursorLineNr ctermbg=4 ctermfg=0
set cursorline
highlight clear CursorLine

"色
set background=dark
let g:airline_theme='dark'
"let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 
"colorscheme hybrid 
colorscheme onedark 
"colorscheme space-vim-dark 


"オートインデント
set autoindent

"インデント幅
set shiftwidth=2
set softtabstop=2
set tabstop=2

"タブをスペースに変換
set expandtab
set smarttab

"ビープ音すべてを無効にする
set visualbell t_vb=

"長い行の折り返し表示
set wrap

"検索設定
"インクリメンタルサーチしない
set noincsearch
"ハイライト
set hlsearch
"大文字と小文字を区別しない
set ignorecase
"大文字と小文字が混在した検索のみ大文字と小文字を区別する
set smartcase
"最後尾になったら先頭に戻る
set wrapscan
"置換の時gオプションをデフォルトで有効にする
set gdefault


"不可視文字の設定
"set list
"set listchars=tab:>-,eol:↲,extends:»,precedes:«,nbsp:%
"set listchars=eol:↲
"コマンドラインモードのファイル補完設定
set wildmode=list:longest,full

"入力中のコマンドを表示
set showcmd

"クリップボードの共有
set clipboard+=unnamed

"カーソル移動で行をまたげるようにする
set whichwrap=b,s,h,l,<,>,~,[,]

"バックスペースを使いやすく
set backspace=indent,eol,start
set nrformats-=octal

set pumheight=10

"対応する括弧に一瞬移動
set showmatch
set matchtime=1
source $VIMRUNTIME/macros/matchit.vim " Vimの「%」を拡張する

"ウィンドウの最後の行もできるだけ表示
set display=lastline

"変更中のファイルでも保存しないで他のファイルを表示する
set hidden

"バックアップファイルを作成しない
set nobackup
"バックアップファイルのディレクトリ指定
"set backupdir=$HOME/.vim/backup
"アンドゥファイルを作成しない
set noundofile
"アンドゥファイルのディレクトリ指定
set undodir=$HOME/.vim/backup
"スワップファイルを作成しない
set noswapfile



""""""""""""""""""""""""""""""



"カーソル移動
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap <down> gj
nnoremap <up> gk
noremap <S-h> ^
noremap <S-j> }
noremap <S-k> {
noremap <S-l> $

"jjでノーマルモード
inoremap jj <esc>

"ノーマルモードのまま改行
nnoremap <CR> A<CR><ESC>
"ノーマルモードのままスペース
nnoremap <space> i<space><esc>

"rだけでリドゥ
nnoremap r <C-r>

"Yで行末までヤンク
nnoremap Y y$

"ESCキー2度押しでハイライトの切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

"NERDTree 操作
nnoremap <silent><C-t> :NERDTreeToggle<CR>

"ペースト時に自動インデントで崩れるのを防ぐ
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

inoremap {<Enter> {}<Left><CR><ESC><S-o>
"inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left>
"inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left>

"inoremap ( () <Left>
"inoremap [ [] <Left>
" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = '☰'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
"let g:airline_symbols.notexists = '∄'
"let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

" old vim-powerline symbols
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂  '
let g:airline_right_alt_sep = '⮃  '
"let g:airline_symbols.branch = '⭠  '
"let g:airline_symbols.readonly = '⭤  '
"let g:airline_symbols.linenr = '⭡  '

filetype plugin indent on
