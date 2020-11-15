# Settings_Mac

## Install list

- [Google Chrome](https://www.google.co.jp/chrome/index.html)
- [Homebrew](https://brew.sh/index_ja)
- [英かな](https://ei-kana.appspot.com/)
- [iTerm2](https://www.iterm2.com/)
- [MacDown](https://macdown.uranusjr.com/)
- astah professional
- eset
- Office365
- Microsoft Edge
- Krisp
- Zoom
- Snap Camera
- Docker
- Visual Studio Code

## App Store

- MS Remote Desktop
- Slack
- Amphetamine
- CotEditor

## デフォルトシェルを変更する

Macのデフォルトシェルが`zsh`になっているので`bash`に変更する。

1. `システム環境設定`を開く
2. `ユーザとグループ`を開く
3. 左下の鍵マークを外す
4. 設定を変更するユーザを選択して右クリックで`詳細オプション`を開く
5. ログインシェルを`bash`に変更する

## Create Symbolic Link

```sh
ln -sf ~/settings_mac/.bash_profile ~/.bash_profile
ln -sf ~/settings_mac/.vimrc ~/.vimrc
```

## using Homebrew

```sh
brew install bash-completion
brew install tree
```

## Install Ruby using rbenv


```sh
brew install rbenv ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
```

```sh
rbenv install --list # List all available versions
rbenv install 2.5.0
rbenv global 2.5.0
```

## Install Ruby using RVM

```sh
brew install gnupg2
```

### Install [RVM](https://rvm.io/rvm/install)

```sh
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash
rvm install 2.5
```
