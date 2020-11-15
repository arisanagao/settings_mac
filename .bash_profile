export LSCOLORS=gxfxbxdxcxegedabagacad
export PROMPT_COMMAND='history -a'

alias ls='ls -GhF'
alias l='ls -l'
alias la='ls -A'
alias ll='ls -lA'
alias more='less -FX --quit-at-eof'

# alias jmeter='java -jar /Users/a-nagao/apache-jmeter-3.2/bin/ApacheJMeter.jar &'

alias ..2='cd ../..'
alias ..3='cd ../../..'
alias q='exit'

alias be='bundle exec'
alias tree='tree -a -C -I "node_modules|cache|.git"'

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

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export BASH_SILENCE_DEPRECATION_WARNING=1
