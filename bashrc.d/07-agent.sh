[ -z "$SSH_AUTH_SOCK" ] && export SSH_AUTH_SOCK=`ls /tmp/ssh-*/agent.*`
if [ -f "${HOME}/.gpg-agent-info" ]; then
  . "${HOME}/.gpg-agent-info"
  export GPG_AGENT_INFO
fi
echo | gpg-connect-agent 2>/dev/null || \
    eval $(gpg-agent --daemon --write-env-file "${HOME}/.gpg-agent-info")
export GPG_TTY=$(tty)