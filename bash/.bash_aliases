#!/usr/bin/env bash

alias attach='screen -d -R maru-dev'

alias attach-me='screen -d -R me-dev'

# sw_vers is mac-only
if which sw_vers &> /dev/null;
then
    alias ls='ls -G'
else
    alias ls='ls --color'
fi

alias cdo='export GOPATH=~/src/os;export PATH=~/src/os/bin:$PATH;pushd ~/src/os/src/github.com/openshift > /dev/null'

alias cdkk='export GOPATH=~/src/kk;pushd ~/src/kk/src/k8s.io/kubernetes > /dev/null'

alias cdca='pushd ~/src/mocp/repos/service-ca-operator > /dev/null'

alias cdmr='pushd ~/src/mocp/repos > /dev/null'

alias cdml='pushd ~/src/mocp/lib > /dev/null'

alias kc='kubectl'
