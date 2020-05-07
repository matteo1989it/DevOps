#!/bin/bash

DIR=""

read -p "Insert directory: " DIR 
if [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
  echo "Switching to ${DIR}..."
  cd $DIR
  if [ -d .git ]; then
    git status
  else
    git init
    git add --all
    git commit -m "initial Commit - directory under surveillance"
  fi
  exit
else
  ###  Control will jump here if $DIR does NOT exists ###
  echo -n "${DIR} not found. Creating...\n"
  mkdir $DIR
  cd $DIR && git init
  exit
fi
