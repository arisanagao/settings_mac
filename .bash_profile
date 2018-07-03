export PATH=/usr/local:$PATH
PS1="[\u@\h \[\033[91m\]\w/\[\033[0m\]] $"

export LSCOLORS=gxfxbxdxcxegedabagacad
alias ls='ls -GhF'
alias l='ls -l'
alias la='ls -A'
alias ll='ls -lA'
alias chrome="open /Applications/Google\ Chrome.app"
alias macdown="open /Applications/MacDown.app/Contents/MacOS/MacDown"

alias csshX='i2cssh'
alias jmeter='java -jar /Users/a-nagao/apache-jmeter-3.2/bin/ApacheJMeter.jar &'

export LESS='-R'
export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'
alias less='less -FX --quit-at-eof'
alias more='less -FX --quit-at-eof'

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

if [ "$TERM_PROGRAM" = "Apple_Terminal" ]; then
    if [ -f ~/.bashrc ]; then
        source ~/.bashrc
    fi
fi
