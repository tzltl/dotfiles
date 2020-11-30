# dotfiles

dotfileをまとめました．

- Z shell (zsh)
  - [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
- tmux
  - [tmux-powerline](https://github.com/erikw/tmux-powerline)
- NeoVim
  - [dein](https://github.com/Shougo/dein.vim) : Vim plugin manager
  - [Vim-airline](https://github.com/vim-airline/vim-airline)

---

## Installation (この構成で必要なもの)

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

### dein.vim

```sh
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
```

---

## ローカルにダウンロード

git clone

```sh
git clone https://github.com/tzltl/dotfiles.git
```

cloneしたあと以下のコマンドで上記構成のディレクトリ配下にファイルをコピーします．
(訳あってシンボリックリンクにはしていません．)

```sh
sh ./dotfiles/install.sh
```
