alias attach='screen -d -R maru-dev'

alias js='java org.mozilla.javascript.tools.shell.Main'

# sw_vers is mac-only
if which sw_vers &> /dev/null;
then
    alias ls='ls -G'
else
    alias ls='ls --color'
fi

alias g='git'

alias cdos='export GOPATH=~/src/os;pushd ~/src/os/src/github.com/openshift/origin > /dev/null'

alias cdose='export GOPATH=~/src/ose;pushd ~/src/ose/src/github.com/openshift/ose > /dev/null'

alias cdk8s='export GOPATH=~/pushd ~/src/k8s/src/k8s.io/kubernetes > /dev/null'

alias kc='kubectl'

alias dk='docker'
