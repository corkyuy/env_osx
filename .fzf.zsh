# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/corkyuy/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/corkyuy/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/corkyuy/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/corkyuy/.fzf/shell/key-bindings.zsh"

