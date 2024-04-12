# Setup fzf
# ---------
if [[ ! "$PATH" == */home/jay/.local/share/nvim/site/pack/packer/start/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/jay/.local/share/nvim/site/pack/packer/start/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/jay/.local/share/nvim/site/pack/packer/start/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/jay/.local/share/nvim/site/pack/packer/start/fzf/shell/key-bindings.bash"
