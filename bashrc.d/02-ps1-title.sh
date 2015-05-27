# Set the terminal title
window_code="0"
if [[ -n $TMUX ]]; then
  window_code="2"
fi
start_title="\[\033]${window_code};"
end_title="\007\]"
PS1+="${start_title}\u@\h: \w${end_title}"
