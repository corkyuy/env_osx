#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my BASH configurations and aliases
#  Sections:
#  1.  Environment Configuration
#  2.  Make Terminal Better (remapping defaults and adding functionality)
#  3.  File and Folder Management
#  4.  Searching
#  5.  Process Management
#  6.  Networking
#  7.  System Operations & Information
#  8.  Web Development
#  9.  Reminders & Notes
#
#  ---------------------------------------------------------------------------

#   -------------------------------
#   1. ENVIRONMENT CONFIGURATION
#   -------------------------------
    export BASH_CONF="bash_profile"
#   Change Prompt
#   ------------------------------------------------------------
    export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| $ "
    export PS2="| $ "

#   Set Paths
#   ------------------------------------------------------------
    export PATH="$PATH:/usr/local/bin:/usr/local/sbin"
    export PATH="$HOME/.app:$HOME/.local/bin:$HOME/.script:$PATH"

#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------
    export EDITOR=/usr/bin/nano

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

source ~/config/.make_osx_better

### MOTD ###
    motd.sh

# bash complete #
    . /usr/local/etc/bash_completion

    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


### OCAML ###
    . /Users/corkyuy/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

### STACK ###
    export PATH=$(stack path --bin-path)

### NOTES ###
    source ~/config/.script/notes.sh


