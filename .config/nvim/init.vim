if &compatible
  set nocompatible
endif

  " Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('$HOME/.cache/dein')
  call dein#begin('$HOME/.cache/dein')
  call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')
 if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
 endif

 call dein#load_toml('$HOME/.config/nvim/dein.toml',{'lazy':0})
 call dein#load_toml('$HOME/.config/nvim/dein_lazy.toml',{'lazy':1})

 call dein#add('rafi/awesome-vim-colorschemes') 
 call dein#end()
 call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

""""""""""""""""""""""""""""""""""
""" Setting
filetype plugin indent on
syntax enable

set laststatus=2
set t_Co=256
"エンコーディング
set encoding=utf-8
scriptencoding utf-8 

"カーソル位置表示
set ruler
"行番号表示
set number
set relativenumber
"マウス操作
set mouse=a

"色
set background=dark
" colorscheme heraldish
colorscheme kuroi

set termguicolors
set cursorline
set pumblend=10	

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

" ウィンドウを右に開く
set splitright
" ウィンドウを下に開く
set splitbelow

set noshowmode

let mapleader = "\<Space>"

""" COC Setting
nnoremap <Leader>n :call CocAction('diagnosticNext')<CR>
nnoremap <Leader>p :call CocAction('diagnosticPrevious')<CR>

""" Easy Motion Setting

" s{char}{char} to move to {char}{char}
nmap f <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)


"カーソル移動
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap <down> gj
nnoremap <up> gk

"jjでノーマルモード
inoremap jj <esc>
";;でノーマルモード
inoremap ;; <esc>

"ノーマルモードのまま改行
nnoremap <CR> A<CR><ESC>

"Yで行末までヤンク
nnoremap Y y$

"ESCキー2度押しでハイライトの切り替え
" nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
nnoremap <silent><Esc> :noh<CR>

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

"かっこの補完
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left>
inoremap (<Enter> ()<Left>

" fzf Setting
set rtp+=/usr/local/opt/fzf

""""""""""""""""" Color """""""""""""""""""""""
highlight EndOfBuffer guibg=NONE
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
highlight Normal ctermbg=NONE guibg=NONE guifg=#c0c0c0
highlight LineNr cterm=NONE ctermfg=NONE ctermbg=NONE guifg=#00afaf guibg=NONE
" highlight CursorLine guibg=#005050
highlight CursorLineNr guibg=NONE guifg=#5fafff
highlight SignColumn guibg=NONE
" highlight Pmenu  guibg=#000011 guifg=#d0d0d0
highlight Pmenu guibg=#006c6c guifg=#00bfbf
highlight PmenuSel guifg=#00afaf guibg=#1c1c1c
highlight NormalFloat guifg=#00afaf guibg=#1c1c1c
" highlight PmenuSel guifg=#00afaf guibg=#1c1c1c
highlight CocErrorHighlight gui=undercurl,bold guifg=#ff5f5f
highlight CocErrorSign guifg=#c0c0c0
highlight CocErrorFloat guifg=#d75f5f
" highlight DefxIconsDirectory guifg=#87afff
" highlight Defx_filename_directory guifg=#00afaf
" highlight Search guibg=#5fafaf

"""""""""""""""""  TeX 
" highlight Special guifg=#afaf00
" highlight texType guifg=#afd700
" highlight Statement guifg=#87afd7
""""""""""""""""""""""""""""""

