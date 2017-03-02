[ -z "$SSH_AUTH_SOCK" ] && export SSH_AUTH_SOCK=`ls /tmp/ssh-*/agent.*`
if [ -f "${HOME}/.gpg-agent-info" ]; then
  . "${HOME}/.gpg-agent-info"
  export GPG_AGENT_INFO
fi
echo | gpg-connect-agent 2>/dev/null || \
    eval $(gpg-agent --daemon --write-env-file "${HOME}/.gpg-agent-info")
export GPG_TTY=$(tty)
export BINARY_SSH="~/bin/ssh-tmux-helper"
alias scp="BINARY_SSH=scp ssh"
alias sftp="BINARY_SSH=sftp ssh"
alias rsync="BINARY_SSH=rsync ssh"
