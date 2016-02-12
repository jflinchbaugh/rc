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

function ss() { ssh -X -t $1 "screen -xR || bash -l"; }
function cdw() { cd "$HOME/workspace/$1"; }

# a quick find or find and vi like ctrl-p gives me in vim
function f() { find . -not -path '*/\.*' -type f -iname "*$1*" | head ; }
function fvi() { vi $(f $1); }

alias g=git
alias cdns="cd '/Volumes/infotech/Software Development Office/IAM Managed Work/idmgmt_titles_depart_ext_org_cleanup'"
alias java7="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home"
alias java8="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home"

PERL_MB_OPT="--install_base \"/Users/jflinchbaugh/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/jflinchbaugh/perl5"; export PERL_MM_OPT;

cat << END
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
END

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/jflinchbaugh/.sdkman"
[[ -s "/Users/jflinchbaugh/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jflinchbaugh/.sdkman/bin/sdkman-init.sh"

