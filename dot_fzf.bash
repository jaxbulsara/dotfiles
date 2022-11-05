# Setup fzf
# ---------
if [[ ! "$PATH" == */home/jay/.vim/pack/user-interface/start/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/jay/.vim/pack/user-interface/start/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/jay/.vim/pack/user-interface/start/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/jay/.vim/pack/user-interface/start/fzf/shell/key-bindings.bash"
