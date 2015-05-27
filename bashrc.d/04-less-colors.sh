. ~/.dotfiles/solarized/colors.sh

BOLD=$(tput bold)
BLINK=$(tput blink)
UNDERLINE=$(tput smul)
RESET=$(tput sgr0)

# blink mode
export LESS_TERMCAP_mb=${BLINK}${BASE2_FG}
# bold mode
export LESS_TERMCAP_md=${BOLD}${BLUE}
# underline mode
export LESS_TERMCAP_us=${UNDERLINE}${BASE2_FG}
export LESS_TERMCAP_ue=${RESET}

# Standout mode (status bar etc)
export LESS_TERMCAP_so=${BASE1_BG}${BASE03_FG}
export LESS_TERMCAP_se=${RESET}

# Reset everything
export LESS_TERMCAP_me=${RESET}
