set -o vi

PS1="\u@\h:\w\n\$ "
export PS1

GOPATH=$HOME/go
export GOPATH

PATH="$HOME/bin:$HOME/.npm-global/bin:$GOPATH/bin:$PATH"
export PATH

HISTSIZE=5000
export HISTSIZE

if [ -x $HOME/bin/ec ]; then
    VISUAL=$HOME/bin/ec
else
    VISUAL=vi
fi
EDITOR=$VISUAL
export VISUAL EDITOR

GPG_TTY=$(tty)
export GPG_TTY

st() { ssh -X -t $@ "tmux attach || tmux || screen -xR || bash -l"; }

if [ "$(uname)" = 'Linux' ]; then
    alias open=exo-open
    alias m=mutt
fi

alias g=git
alias gs='git status'
alias d=docker

alias m=mvn
alias mc='mvn clean'
alias misft='mvn install -Dskip-functional-test'

alias light='GTK_THEME=adwaita'

alias k=kubectl

alias rc=". $HOME/.bashrc"
 
cat << END
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
END
