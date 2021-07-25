#!/bin/bash
populate_and_list_files () {
  echo  -e "Listing session files in $HOME/.config/kitty/sessions/$1\n"

  local idx=0
  for f in "$HOME/.config/kitty/sessions/$1"*; do
    idx=$[idx+1]
    files=(${files[@]} "$f")
    echo "$idx. $(basename "$f")"
  done
}

read_user_session_choice () {
  read  -n 1 -p "Choose a session: " chosen_session
  echo -e "\n$(basename "${files[chosen_session-1]}") was chosen!"
}

open_kitty_session () {
  kitty --session ${files[chosen_session-1]} </dev/null &>/dev/null &!
}

populate_and_list_files
read_user_session_choice
open_kitty_session

