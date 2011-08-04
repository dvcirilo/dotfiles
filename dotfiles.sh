#!/bin/bash

find . -maxdepth 1 -name "[^.]*" | sed 's/..\(.*\)/\1/' | while read FILE;
do
  ln -s "./.dotfiles/$FILE" "../.$FILE"
  echo $FILE;
done
