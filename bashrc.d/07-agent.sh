echo | gpg-connect-agent --no-auto-start 2>/dev/null || \
    eval $(gpg-agent --daemon 2>/dev/null)
export GPG_TTY=$(tty)
# env and aliases for ssh-ident
export BINARY_SSH="~/bin/ssh-tmux-helper"
alias scp="BINARY_SSH=scp ssh"
alias sftp="BINARY_SSH=sftp ssh"
#alias rsync="BINARY_SSH=rsync ssh"
