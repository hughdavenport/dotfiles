shopt -s histappend
HISTCONTROL="ignoredups"
HISTSIZE=-1
HISTFILESIZE=-1
HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S  "
PROMPT_COMMAND="history -a;${PROMPT_COMMAND}"
