# ---------
# Key bindings
# ------------
source "$HOME/.dotfiles/submodules/fzf/shell/key-bindings.bash"

if [ -n "$TMUX" ]; then
    export FZF_TMUX=1
fi
