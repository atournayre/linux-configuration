#!/bin/bash

install_ssh()
{
  echo "What's your email?"
  read ssh_email

  ssh-keygen -t ed25519 -C "$ssh_email"

  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_ed25519

  sudo apt-get install xclip
  xclip -selection clipboard < ~/.ssh/id_ed25519.pub

  echo "${YELLOW}SSH Key have been copied in your clipboard${NC}"
  echo "${YELLOW}You can add it to GitHub https://github.com/settings/ssh/new${NC}"
}
