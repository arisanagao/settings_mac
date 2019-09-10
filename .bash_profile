# export PATH=/usr/local:$PATH
export LSCOLORS=gxfxbxdxcxegedabagacad
export PROMPT_COMMAND='history -a'

alias ls='ls -GhF'
alias l='ls -l'
alias la='ls -A'
alias ll='ls -lA'
alias chrome="open /Applications/Google\ Chrome.app"
alias macdown="/Applications/MacDown.app/Contents/MacOS/MacDown"
alias csshX='i2cssh'
alias more='less -FX --quit-at-eof'

# alias jmeter='java -jar /Users/a-nagao/apache-jmeter-3.2/bin/ApacheJMeter.jar &'

alias ..2='cd ../..'
alias ..3='cd ../../..'
alias q='exit'

alias be='bundle exec'
alias railsc='bundle exec rails c'
alias dbmigrate='bundle exec rails db:create db:migrate'
alias tree='tree -a -C -I "node_modules|cache|.git"'

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

if [ "$TERM_PROGRAM" = "Apple_Terminal" ]; then
    if [ -f ~/.bashrc ]; then
        source ~/.bashrc
    fi
fi

#### display branch name on PS1 ###
function length()
{
  echo -n ${#1}
}
function init-prompt-git-branch()
{
  git symbolic-ref HEAD 2>/dev/null >/dev/null &&
  echo "($(git symbolic-ref HEAD 2>/dev/null | sed 's/^refs\/heads\///'))"
}
if which git 2>/dev/null >/dev/null
then
  export PS1_GIT_BRANCH='\[\e[$[COLUMNS]D\]\[\e[1;31m\]\[\e[$[COLUMNS-$(length $(init-prompt-git-branch))]C\]$(init-prompt-git-branch)\[\e[$[COLUMNS]D\]\[\e[0m\]'
else
  export PS1_GIT_BRANCH=
fi
#### end ####

PS1="\n\t \u@\h:\[\e[91m\]\w ${PS1_GIT_BRANCH}\e[0m\]\n$"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
