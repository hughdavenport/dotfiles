# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
  COMPLETIONS=~/.bash-completion
  for FILE in $COMPLETIONS/*.bash; do
      [ "$FILE" != "$COMPLETIONS/*.bash" ] && source $FILE
  done
fi

DOTD=~/.bashrc.d
for FILE in $DOTD/*.sh; do
    [ "$FILE" != "$DOTD/*.sh" ] && source $FILE
done

if [ -f ~/.bashrc_local ]; then
    . ~/.bashrc_local
fi
