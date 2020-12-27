# dotfiles

dotfileをまとめました．

- Z shell (zsh)
  - [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
- [tmux](https://github.com/tmux/tmux)
  - [tmux-powerline](https://github.com/erikw/tmux-powerline)
- [NeoVim](https://github.com/neovim/neovim)
  - [dein](https://github.com/Shougo/dein.vim) : Vim plugin manager
  - [vim-powerline](https://github.com/Lokaltog/vim-powerline)
  - [vim-airline](https://github.com/vim-airline/vim-airline)

---

## Installation (この構成で必要なもの)

以下はmacOS環境下でのコマンドです．  
環境に応じてパッケージマネージャなど適宜置き換える必要があります．

### zsh

```sh
brew install zsh
```

### Oh My Zsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### tmux

```sh
brew install tmux
```

### tmux-powerline

```sh
git clone https://github.com/erikw/tmux-powerline.git
```

### NeoVim

```sh
brew install neovim
pip install pynvim
```

### dein.vim

```sh
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
```

### fzf.vim

```sh
brew install fzf
```

Ag (Silver Searcher)も使うなら

```sh
brew install the_silver_searcher
```

---

## ローカルにダウンロード

git clone

```sh
git clone https://github.com/tzltl/dotfiles.git
```

cloneしたあと以下のコマンドで上記構成のディレクトリ配下にファイルをコピーします．
(あえてシンボリックリンクにはしていません．)

```sh
sh ./dotfiles/install.sh
```
