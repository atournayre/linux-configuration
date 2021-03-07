#!/bin/bash

install_zsh()
{
  #  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  update
  upgrade

  sudo apt -y install zsh
  sudo apt-get -y install powerline fonts-powerline

  git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

  cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

  sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc

  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

  sed -i 's/plugins=(git)/plugins=(git docker-compose docker git-auto-fetch history sudo ubuntu web-search timer zsh-autosuggestions)/g' ~/.zshrc

  chsh -s /bin/zsh

  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1

  echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"
}
