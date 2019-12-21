#!/usr/bin/env bash

alias attach='screen -d -R maru-dev'

# sw_vers is mac-only
if which sw_vers &> /dev/null;
then
    alias ls='ls -G'
else
    alias ls='ls --color'
fi

alias cdo='export GOPATH=~/src/os;export PATH=~/src/os/bin:$PATH;pushd ~/src/os/src/github.com/openshift > /dev/null'

alias cdca='export GOPATH=~/src/os;export PATH=~/src/os/bin:$PATH;pushd ~/src/os/src/github.com/openshift/service-ca-operator > /dev/null'

alias cdkk='export GOPATH=~/src/kk;pushd ~/src/kk/src/k8s.io/kubernetes > /dev/null'

alias kc='kubectl'

alias cdkf='export GOPATH=~/src/kf;export PATH=~/src/kf/bin:~/src/kf/src/sigs.k8s.io/kubefed/bin:$PATH;pushd ~/src/kf/src/sigs.k8s.io/kubefed > /dev/null'

alias kf='kubefedctl'

alias docker=podman
