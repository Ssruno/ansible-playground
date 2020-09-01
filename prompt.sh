#!/usr/bin/env bash

# We add timestamp and git branch to the shell
echo "parse_git_branch() {
             git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1='\033[1;33m(\t)\033[m \033[1;36m[ \u@\h |\033[m \033[1;32m\W\033[m \033[1;36m]\033[m $(parse_git_branch)\n> '
" | tee -a /root/.bashrc /home/vagrant/.bashrc


yum install ansible
