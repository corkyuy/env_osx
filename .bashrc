### IMPORTS ###

#   -------------------------------
#   0. REQUIREMENTS TO RUN THE SCRIPT
#   -------------------------------

#   Get the current config path
curr=~/config

#   -------------------------------
#   1. ENVIRONMENT CONFIGURATION
#   -------------------------------
    export BASH_CONF="bashrc"

#   Change Prompt
#   ------------------------------------------------------------
    export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| $ "
    export PS2="| $ "


#   Set Paths
#   ------------------------------------------------------------
    source $curr/.env

#   Set alias
#   ------------------------------------------------------------
    source $curr/.alias


#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------
    export EDITOR=vim

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
    export BLOCKSIZE=1k

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
#   export CLICOLOR=1
#   export LSCOLORS=ExFxBxDxCxegedabagacad
    export TERM=screen-256color 

#   Set terminal to use vi key bindings
    set -o vi

    source $curr/.make_osx_better
### NIX ###
    unset NIX_REMOTE
    source ~/nix.sh
    #unset NIX_PATH

    function nix-switch() {
      nix-env --switch-profile $NIX_USER_PROFILE_DIR/$1
    }
    function nix-profile() {
      ls -al ~/.nix-profile | awk '{print $NF}' | xargs basename
    }
 
### MOTD ###
    motd.sh

# bash complete #
    . /usr/local/etc/bash_completion

### NOTES ###
    source $curr/.script/notes.sh

#   -------------------------------
#   2. TOOLS
#   -------------------------------

#   Setup fzf key bindings
    source "/Users/corkyuy/.fzf/shell/key-bindings.bash"

#   NIX haskell shortcuts
    env-type () {
      envtype="$1"
      shift
      nix-shell -Q -p $envtype "$@"
    }

    haskell-env () {
      env-type "haskellEnv" "$@"
    }

    haskell-env-hoogle () {
      env-type "haskellEnvHoogle" "$@"
    }
