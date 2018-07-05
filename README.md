# Settings_Mac

## Install list
- [Google Chrome](https://www.google.co.jp/chrome/index.html)
- [Homebrew](https://brew.sh/index_ja)
- [英かな](https://ei-kana.appspot.com/)
- [iTerm2](https://www.iterm2.com/)
- [MacDown](https://macdown.uranusjr.com/)

### using Homebrew
```
brew install bash-completion
brew install rbenv
brew install mysql
```

## Install Ruby using rbenv
```
rbenv install --list # List all available versions
rbenv install 2.5.0
rbenv global 2.5.0
```

## MySQL
We've installed your MySQL database without a root password. To secure it run:
    `mysql_secure_installation`
    
MySQL is configured to only allow connections from localhost by default

To connect run:
    `mysql -uroot`

To have launchd start mysql now and restart at login:
  `brew services start mysql`
Or, if you don't want/need a background service you can just run:
  `mysql.server start`