# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

source ~/dotfiles/ubuntu.bashrc
source ~/dotfiles/git-completion.bash
source ~/dotfiles/umask.bashrc
source ~/dotfiles/alias.bashrc
source ~/dotfiles/rlwrap.bashrc

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Use this on servers with forwarded ssh keys
# source ~/dotfiles/persistsshkeys.bashrc
