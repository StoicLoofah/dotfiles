# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

source ~/settings/ubuntu.bashrc
source ~/settings/git-completion.bash
source ~/settings/umask.bashrc
# source ~/settings/prompt.bashrc
source ~/settings/alias.bashrc
source ~/settings/rlwrap.bashrc
# source ~/settings/node.bashrc
source ~/settings/virtualenv.bash_profile

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

