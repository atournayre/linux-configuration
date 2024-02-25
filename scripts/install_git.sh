#!/bin/bash

install_git()
{
  GIT_SCRIPT_DIR=$USER_DIR/scripts/git
  GIT_CONFIG_DIR=$USER_DIR

  # Create directories if not exists
  mkdir -p $GIT_SCRIPT_DIR

  # Copy files
  cp -r ./files_to_copy/git/. $GIT_SCRIPT_DIR
  cp -r ./config/git/. $GIT_CONFIG_DIR
}
