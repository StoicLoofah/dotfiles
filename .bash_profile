# ~/.bash_profile

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# add more path variables
export PATH=./node_modules/.bin/:$PATH:./

# source ~/settings/keychain.bash_profile
