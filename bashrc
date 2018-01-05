#!/bin/bash

set -o vi

PS1="\u@\h:\w\$ "
export PS1

PATH="$HOME/bin:$PATH"
export PATH

VISUAL=vi
EDITOR=vi
export VISUAL EDITOR

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home
export JAVA_HOME

mesg n

function ss() { ssh -X -t $1 "screen -xR || bash -l"; }
function cdw() { cd "$HOME/workspace/$1"; }

# a quick find or find and vi like ctrl-p gives me in vim
function f() { find . -not -path '*/\.*' -type f -iname "*$1*" | head ; }
function fvi() { vi $(f $1); }

if [ "$(uname)" = 'Linux' ]; then
    alias open=exo-open
    alias m=mutt
fi

alias g=git

# source in local changes that aren't shared
if [ -f "$HOME/.bashrc_local" ]; then
    . "$HOME/.bashrc_local"
fi

cat << END
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
END

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

