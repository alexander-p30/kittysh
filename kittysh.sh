#!/bin/bash
session_files_dir="$HOME/.config/kitty/startup-sessions"
chosen_session_file=`ls $session_files_dir | tr ' ' '\n' | fzf`

if [[ $chosen_session_file != "" ]]; then
  kitty --session "$session_files_dir/$chosen_session_file" </dev/null &>/dev/null &!
  exit 0
else
  exit 1
fi

