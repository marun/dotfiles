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

alias cdos='export GOPATH=/opt/src/os;pushd /opt/src/os/src/github.com/openshift/origin > /dev/null'

alias cdose='export GOPATH=/opt/src/ose;pushd /opt/src/ose/src/github.com/openshift/ose > /dev/null'

alias cdkk='export GOPATH=/opt/src/kk;pushd /opt/src/kk/src/k8s.io/kubernetes > /dev/null'

alias cdkf='export GOPATH=/opt/src/kf;pushd /opt/src/kf/src/k8s.io/federation > /dev/null'

alias cdkt='export GOPATH=/opt/src/kt;pushd /opt/src/kt/src/k8s.io/test-infra > /dev/null'

alias cdfn='export GOPATH=/opt/src/fn;export PATH=/opt/src/fn/src/github.com/kubernetes-sigs/federation-v2/bin:$PATH;pushd /opt/src/fn/src/github.com/kubernetes-sigs/federation-v2 > /dev/null'

alias cdtf='export GOPATH=/opt/src/tf;pushd /opt/src/tf/src/github.com/kubernetes-sigs/testing_frameworks > /dev/null'

alias cdcr='export GOPATH=/opt/src/cr;pushd /opt/src/cr/src/k8s.io/cluster-registry > /dev/null'

alias cdop='export GOPATH=/opt/src/op;export PATH=/opt/src/op/bin:$PATH;pushd /opt/src/op/src/github.com/operator-framework/operator-sdk > /dev/null'

alias cdol='export GOPATH=/opt/src/of;pushd /opt/src/of/src/github.com/operator-framework/operator-lifecycle-manager > /dev/null'

alias kc='kubectl'

alias dk='docker'
