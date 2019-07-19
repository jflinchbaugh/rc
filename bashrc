set -o vi

PS1="\u@\h:\w\n\$ "
export PS1

GOLANG=$HOME/go
export GOLANG PATH

PATH="$HOME/bin:$HOME/.npm-global/bin:$GOLANG/bin:$PATH"
export PATH

if [ -x $HOME/bin/ec ]; then
    VISUAL=$HOME/bin/ec
else
    VISUAL=vi
fi
EDITOR=$VISUAL
export VISUAL EDITOR

GPG_TTY=$(tty)
export GPG_TTY

mesg n

function ss() { ssh -X -t $1 "tmux attach || tmux || screen -xR || bash -l"; }

if [ "$(uname)" = 'Linux' ]; then
    alias open=exo-open
    alias m=mutt
fi

alias g=git
alias gs='git status'
alias d=docker

# source in local changes that aren't shared
if [ -f "$HOME/.bashrc_local" ]; then
    . "$HOME/.bashrc_local"
fi

cat << END
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
END

