export PATH=/usr/local:$PATH
PS1="[\u@\h \[\033[91m\]\w/\[\033[0m\]] $"

export LSCOLORS=gxfxbxdxcxegedabagacad
alias ls='ls -GhF'
alias l='ls -l'
alias la='ls -A'
alias ll='ls -lA'
alias chrome="open /Applications/Google\ Chrome.app"

alias csshX='i2cssh'
alias jmeter='java -jar /Users/a-nagao/apache-jmeter-3.2/bin/ApacheJMeter.jar &'

export LESS='-R'
export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'
alias less='less -FX --quit-at-eof'
alias more='less -FX --quit-at-eof'

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

if [ "$TERM_PROGRAM" = "Apple_Terminal" ]; then
    if [ -f ~/.bashrc ]; then
        source ~/.bashrc
    fi
fi
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
