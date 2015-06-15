[ -f ~/.tmux_fallback ] && return
[ -v TMUX_FALLBACK ] && return
which tmux >/dev/null || return
tmux -V >/dev/null 2>&1 || return
test -x ~/bin/tmux-chooser || return
source /usr/share/doc/tmux/examples/bash_completion_tmux.sh
case $- in *i*)
    if [ -z "$TMUX" ]; then
	exec ~/bin/tmux-chooser
    fi
esac
