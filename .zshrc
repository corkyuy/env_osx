# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.script:$PATH"
#export PATH="$HOME/.node/bin:$PATH"
export PATH="$HOME/Documents/workspace/go/bin:$PATH"
export PATH="$HOME/Documents/workspace/xen/bin:$PATH"
export PATH="~/.app:$PATH"

### PYTHON ###
# pyenv #
eval "$(pyenv init -)"

# Path to your oh-my-zsh installation.
export ZSH=/Users/corkyuy/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="refined"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
source $ZSH/oh-my-zsh.sh
plugins=(git osx tmux vi-mode brew)



# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# VIM key bindings
bindkey -v

# Terminal color
export TERM=screen-256color

repo_information() {
    echo "%F{blue}${vcs_info_msg_0_%%/.} %F{green}$vcs_info_msg_1_`git_dirty` $vcs_info_msg_2_%f"
}


########################3

source ~/config/.alias
source ~/config/.make_osx_better

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#export PATH=$(stack path --bin-path)

#if [ -z ${NIX_REMOTE+x} ]; then
#  echo "NOT NIX";
#else
#  echo "Loading NIX profile"
#  source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh;
#fi


#source ~/config/.bash_profile

echo ### Key volume mount ###
hdiutil attach "/Users/corkyuy/Dropbox/Shares/Kristine/Corky docs/Wallet/Keys.dmg"
source /Volumes/Keys/secret_key.sh
if [ -e /Users/corkyuy/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/corkyuy/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer



