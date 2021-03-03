#!/bin/bash

install_lsd()
{
  wget https://github.com/Peltoche/lsd/releases/download/0.19.0/lsd_0.19.0_amd64.deb
  sudo dpkg -i lsd_0.19.0_amd64.deb
  rm lsd_0.19.0_amd64.deb

  echo "alias ls='lsd -l'" >> "$HOME/.zshrc"

  git clone https://github.com/ryanoasis/nerd-fonts.git ~/.nerd-fonts --depth 1
  ~/.nerd-fonts/install.sh Hack
  rm -rf ~/.nerd-fonts
}
