export PATH=/usr/local:$PATH
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

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

if [ "$TERM_PROGRAM" = "Apple_Terminal" ]; then
    if [ -f ~/.bashrc ]; then
        source ~/.bashrc
    fi
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

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

# if ls /Volumes/keys/Gerhilde.rsa
# then
#   ssh Sgw_nagaoEC2
# else
#   echo 'SSH NG'
# fi
