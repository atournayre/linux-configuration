#!/bin/bash

. ./inc/includes.sh --source-only

check_if_sudo

. ./scripts/scripts.sh --source-only

title 'HTOP'
install_htop

title 'CHROME'
install_chrome

title 'TERMINATOR'
install_terminator

title 'GIT'
install_git

title 'DOCKER'
install_docker

title 'DOCKER-COMPOSE'
install_docker_compose

title 'ZSH'
install_zsh

title 'CUSTOM TERMINAL'
install_lsd

title 'SSH Key'
install_ssh

title 'PHPStorm'
install_phpstorm

install_complete
exit 0