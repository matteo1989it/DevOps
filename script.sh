#!/bin/bash

DIR=""

read -p "Insert directory: " DIR 
if [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
  echo "Switching to ${DIR}..."
  cd $DIR
  git status
  exit
else
  ###  Control will jump here if $DIR does NOT exists ###
  echo "${DIR} not found. Creating..."
  mkdir $DIR
  cd $DIR && git init
  exit
fi
