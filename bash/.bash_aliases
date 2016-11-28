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

alias cdos='pushd ~/src/os/src/github.com/openshift/origin'

alias kc='kubectl'
