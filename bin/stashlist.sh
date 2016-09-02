#!/bin/sh

# recursivel list all git repos and any stashes in them

find . -type d -name .git \
| sed 's!/.git!!' \
| xargs -I {} sh -c "cd {}; pwd; git stash list"
