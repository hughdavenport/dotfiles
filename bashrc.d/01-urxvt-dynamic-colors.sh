if [ -z "$DISPLAY" -o -n "$SSH_CONNECTION" -o -n "$DYNAMIC_COLORS_SUFFIX" ]; then
    return;
fi
export PATH="$HOME/.dynamic-colors/bin:$PATH"
X_ID=$(xdpyinfo | grep focus | cut -f4 -d " " | sed -e 's/,$//')
export DYNAMIC_COLORS_SUFFIX=".${X_ID}"
source $HOME/.dynamic-colors/completions/dynamic-colors.bash
dynamic-colors switch solarized-dark
dynamic-colors init
