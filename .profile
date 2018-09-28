### EXPORT ###
export PATH="~/.app:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/config/.script:$PATH"
export PATH="$HOME/.cabal/bin:$PATH"
#export PATH="$HOME/.node/bin:$PATH"
#export PATH="$HOME/Documents/workspace/go/bin:$PATH"
#export PATH="$HOME/Documents/workspace/xen/bin:$PATH"

### PYTHON ###
# pyenv #
#eval "$(pyenv init -)"

export HOMEBREW_EDITOR=vim

### GO ###
export GOROOT=/usr/local/Cellar/go/1.7.3/libexec/
export GOPATH=$HOME/Documents/workspace/go/

### SETTINGS ###
set -o vi
export WORKDIR='/Volumes/workspace/work'
export PS1='\[\e[1;34m\][\d \t \u@\h \w]\n\$\[\e[m\] '

### ALIASes ###
#alias ll='ls -FGlAhp'
#alias docker-env='eval "$(docker-machine env default)"'
#alias cdwork='cd ~/Documents/workspace'
#alias cdhris='cd ~/Documents/workspace/hris'
#alias cdcore='cd /Volumes/workspace/work/core'
#alias tmux='TERM=screen-256color tmux'
#alias dockerstopall='docker stop $(docker ps -a -q)'
#alias fix_stty='stty sane'
source ~/config/.alias
source ~/config/.make_osx_better
export TERM=screen-256color

###
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
#  #. $(brew --prefix)/etc/bash_completion.d/tmux
#fi

### MOTD ###
#motd.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

### Stack
#export PATH=$(stack path --bin-path)
#export PATH="$HOME/.local/bin:$PATH"

### For nix environment
#if [ -z ${NIX_REMOTE+x} ]; then
#  echo "NOT NIX";
#else
#  echo "Loading NIX profile"
#  source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh;
#fi


