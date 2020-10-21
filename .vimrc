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
 
 call dein#add('Shougo/neocomplete.vim')
 call dein#add('vim-airline/vim-airline')
 call dein#add('vim-airline/vim-airline-themes')

 call dein#add('justmao945/vim-clang')
 "call dein#load_toml('~/.dein.toml' ,      {'lazy': 0})
 "call dein#load_toml('~/.dein_lazy.toml' , {'lazy': 1})
 call dein#end()
 call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

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
autocmd ColorScheme * highlight LineNr ctermfg=12
autocmd ColorScheme * highlight Normal ctermbg=235
highlight CursorLineNr ctermbg=4 ctermfg=0
set cursorline
highlight clear CursorLine

"色
let g:molokai_original = 1
set background=dark
"カラーテーマは入れたら有効にしてください
colorscheme hyper

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
set clipboard=unnamed,autoselect

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
set backupdir=$HOME/.vim/backup
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

"かっこの補完  
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
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

" 'Shougo/neocomplete.vim' {{{
  let g:neocomplete#enable_at_startup = 1

  if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {} 
  endif
  let g:neocomplete#force_overwrite_completefunc = 1
  let g:neocomplete#force_omni_input_patterns.c =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
  let g:neocomplete#force_omni_input_patterns.cpp =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

" }}}

" 'justmao945/vim-clang' {{{

  " disable auto completion for vim-clang
  let g:clang_auto =1 
  " default 'longest' can not work with neocomplete
  let g:clang_c_completeopt   = 'menuone'
  let g:clang_cpp_completeopt = 'menuone'

  function! s:get_latest_clang(search_path)
     let l:filelist = split(globpath(a:search_path, 'clang-*'), '\n')
     let l:clang_exec_list = []
     for l:file in l:filelist
        if l:file =~ '^.*clang-\d\.\d$'
            call add(l:clang_exec_list, l:file)
        endif
     endfor
     if len(l:clang_exec_list)
        return reverse(l:clang_exec_list)[0]
     else
        return 'clang'
     endif
  endfunction

  function! s:get_latest_clang_format(search_path)
     let l:filelist = split(globpath(a:search_path, 'clang-format-*'), '\n')
     let l:clang_exec_list = []
     for l:file in l:filelist
        if l:file =~ '^.*clang-format-\d\.\d$'
            call add(l:clang_exec_list, l:file)
        endif
     endfor
      if len(l:clang_exec_list)
        return reverse(l:clang_exec_list)[0]
      else
         return 'clang-format'
      endif
  endfunction

  let g:clang_exec = s:get_latest_clang('/usr/bin')
  let g:clang_format_exec = s:get_latest_clang_format('/usr/bin')

  let g:clang_c_options = '-std=c11'
  let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'


" }}}
