# ~/.bash_profile

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export PATH=$PATH:./
# add more path variables

source ~/settings/virtualenv.bash_profile

source ~/settings/keychain.bash_profile
