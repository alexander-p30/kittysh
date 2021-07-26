#!/bin/bash
session_files_dir="$HOME/.config/kitty/startup-sessions"

populate_and_list_files () {
  echo  -e "Listing session files in $session_files_dir/\n"

  local idx=0
  for f in "$session_files_dir/"*; do
    idx=$[idx+1]
    files=(${files[@]} "$f")
    echo "$idx. $(basename "$f")"
  done
}

read_user_session_choice () {
  while :; do
    read  -n 1 -p "Choose a session: " chosen_session_idx

    if ((chosen_session_idx >= 1 && chosen_session_idx <= ${#files[@]})); then
      break
    else
      echo -e "\nPlease select a valid option."
    fi
  done

  chosen_session_file="${files[chosen_session_idx-1]}"
  echo -e "\n$(basename "$chosen_session_file") was chosen!"
}

open_kitty_session () {
  kitty --session "$chosen_session_file" </dev/null &>/dev/null &!
}

populate_and_list_files
read_user_session_choice
open_kitty_session

