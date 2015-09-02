#!/bin/bash

PS1="\u@\h:\w\$ "
export PS1

PATH="$HOME/bin:$PATH"
export PATH

VISUAL=vi
EDITOR=vi
export VISUAL EDITOR

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home
#JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home
#JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA_HOME

mesg n

function ss() { ssh -X -t $1 "screen -xR"; }
alias g=git
alias cdw="cd ~/workspace"
alias java7="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home"
alias java8="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/jflinchbaugh/.gvm/bin/gvm-init.sh" ]] && source "/Users/jflinchbaugh/.gvm/bin/gvm-init.sh"

# show a ruler to help size terminal width
columns.groovy
