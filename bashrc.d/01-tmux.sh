which tmux >/dev/null || return
source /usr/share/doc/tmux/examples/bash_completion_tmux.sh
case $- in *i*)
    if [ -z "$TMUX" ]; then
        # Would be really cool to choose an existing session and start that
        exec tmux -2
    fi
esac
