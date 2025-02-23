#!/bin/bash

read -p "What's you name, family name? " fam_name

#Check if inputs are provided

if [ -z "$fam_name" ]; then
  echo "Error: You actually have to provide a name (nickname) or, at least, to touch once this, full of germs, keyboard!"
  exit 1
fi
echo -e "Hello you mighty (still foolish)" $fam_name"!"

