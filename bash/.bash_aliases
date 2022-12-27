#!/usr/bin/env bash

alias attach='screen -d -R new'

alias attach-me='screen -d -R me-dev'

# sw_vers is mac-only
if which sw_vers &> /dev/null;
then
    alias ls='ls -G'
else
    alias ls='ls --color'
fi

alias kc='kubectl'
