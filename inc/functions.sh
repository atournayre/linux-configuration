#!/bin/bash

update()
{
	sudo apt-get update
}

upgrade()
{
	sudo apt-get upgrade
}

title()
{
  echo "${GREEN}INSTALLATION DE $1...${NC}"
  echo ""
}

install_complete()
{
  echo ""
  echo "${GREEN}Installation completed.${NC}"
}

is_not_user_root()
{
  [ ! "$(id -u)" -eq 0 ];
}

check_if_sudo()
{
  if is_not_user_root; then
      echo "${RED}Run script as root.${NC}" >&2
      exit 1
  fi
}