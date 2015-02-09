# Load theme definition
. ~/.dotfiles/solarized/colors.sh

BOLD=$(tput bold)
RESET=$(tput sgr0)

# The styles, seems to work with both light and dark
style_user="\[${RESET}${ORANGE}\]"
style_host="\[${RESET}${YELLOW}\]"
style_path="\[${RESET}${GREEN}\]"
style_chars="\[${RESET}$(tput setaf 7)\]"   # white/base2 (but inverts)
style_cmdline="\[${RESET}$(tput setaf 7)\]" # white/base2 (but inverts)

# The prompt itself
PS1="\n"                    # newline to start it off
PS1+="${style_user}\u"      # Username
PS1+="${style_chars}@"      # @
PS1+="${style_host}\h"      # Hostname
PS1+="${style_chars}: "     # :
PS1+="${style_path}\w"      # Working directory
# Load some git goodness
source ${BASH_SOURCE%.sh}-git.sh
PS1+="\$(prompt_git)"
PS1+="\n"                   # newline to clean screen
PS1+="${style_chars}\$ "    # $ prompt
PS1+="${style_cmdline}"     # the command entered will be styled

# reset color after prompt
trap "echo -ne '\e[0m'" DEBUG

