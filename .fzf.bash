# Setup fzf
# ---------
if [[ ! "$PATH" == */home/tom/src/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/tom/src/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/tom/src/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/tom/src/fzf/shell/key-bindings.bash"
