# Settings_Mac

## Install list
- [Google Chrome](https://www.google.co.jp/chrome/index.html)
- [Homebrew](https://brew.sh/index_ja)
- [英かな](https://ei-kana.appspot.com/)
- [iTerm2](https://www.iterm2.com/)
- [MacDown](https://macdown.uranusjr.com/)
- [InsomniaX](https://insomniax.softonic.jp/mac)
- Skype
- astah professional
- eset

## App Store
- MS Remote Desktop
- Slack
- Xcode

## Create Symbolic Link
```
ln -sf ~/settings_mac/.bash_profile ~/.bash_profile
ln -sf ~/settings_mac/.vimrc ~/.vimrc
```

## using Homebrew
```
brew install bash-completion
brew install tree
```

## Install Ruby

```
brew install gnupg2
```

### Install [RVM](https://rvm.io/rvm/install)
```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash
rvm install 2.5
```

## Install Ruby using rbenv
```
rbenv install --list # List all available versions
rbenv install 2.5.0
rbenv global 2.5.0
```