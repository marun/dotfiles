#
# ~/.bashrc
#

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Git
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

# Color the prompt differently for a mac, linux host, vm, or docker
# container.

# Mac
if which sw_vers &> /dev/null;
then
  PS1_COLOR='36' # Cyan
  export PATH=${PATH}:/Applications/VMware\ Fusion.app/Contents/Library
  export VAGRANT_DEFAULT_PROVIDER='vmware_fusion'
  ulimit -n 1024

  export DOCKER_HOST=tcp://boot2docker:2376
  export DOCKER_CERT_PATH=~/.boot2docker/certs/boot2docker-vm
  export DOCKER_TLS_VERIFY=1

  PS1_PREFIX=
# Linux
else
  USER_ID="$(whoami)"
  # VM / Container
  if [[ "${USER_ID}" == "vagrant" || "${USER_ID}" == "dev" ]]; then
    PS1_COLOR='37' # White
  # Host
  else
    ps1_color='32' # Green
    export VAGRANT_DEFAULT_PROVIDER=libvirt
  fi
  PS1_PREFIX='${debian_chroot:+($debian_chroot)}'
fi

# Compose prompt
PS1_BASE='\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[01;35m\]$'
PS1_GIT='(__git_ps1 "|%s|")\[\033[00m\]\$ '
PS1=${PS1_PREFIX}'\[\033[01;'${PS1_COLOR}'m\]'${PS1_BASE}${PS1_GIT}

# Ensure cask binaries are in the path
export PATH=~/.cask/bin:$PATH

# Ensure python binaries are in the path
export PATH=~/.local/bin:$PATH

export GOPATH=~/go

# Ensure go binaries are in the path
export PATH=$GOPATH/bin:$PATH

if [[ -f "~/.bash_aliases" ]]; then
  . "~/.bash_aliases"
fi

export XAUTHORITY=~/.Xauthority

# Ensure that ssh agent forwarding works with existing screen sessions.
if [[ -S "${SSH_AUTH_SOCK}" && ! -h "${SSH_AUTH_SOCK}" ]]; then
  ln -sf "${SSH_AUTH_SOCK}" ~/.ssh/ssh_auth_sock;
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock;

if [[ $TERMCAP =~ screen ]]; then
  # Emacs doesn't play nice with TERM=screen
  export TERM=xterm-256color
elif which screen &> /dev/null && screen -ls maru-dev | grep Detached > /dev/null; then
  echo 'Attaching to screen session...'
  attach
fi
