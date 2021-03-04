#!/bin/bash

. ./inc/variables.sh --source-only
. ./inc/functions.sh --source-only

check_if_sudo

. ./scripts/install_htop.sh --source-only
. ./scripts/install_chrome.sh --source-only
. ./scripts/install_terminator.sh --source-only
. ./scripts/install_git.sh --source-only
. ./scripts/install_docker.sh --source-only
. ./scripts/install_docker_compose.sh --source-only
. ./scripts/custom_terminal.sh --source-only
. ./scripts/install_ssh.sh --source-only
. ./scripts/install_phpstorm.sh --source-only

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