export PATH=./:$PATH

source ./git-completion.bash
alias runsrv='python manage.py runcserver'
alias pep8='/usr/bin/pep8 --exclude=migrations --ignore=E501 --repeat .'