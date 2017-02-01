[ -f ~/.tmux_fallback ] && return
[ -v TMUX_FALLBACK ] && return
which tmux >/dev/null || return
tmux -V >/dev/null 2>&1 || return
test -x ~/bin/tmux-chooser || return
case $- in *i*)
    if [ -z "$TMUX" ]; then
	exec ~/bin/tmux-chooser
    fi
esac
