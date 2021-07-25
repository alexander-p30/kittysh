# Kittysh

Kittysh is a very basic bash script to open [kitty](https://sw.kovidgoyal.net/kitty/) startup-sessions easily.
It lists all the files under ~/.config/kitty/startup-sessions and gives you the option to open a [kitty](https://sw.kovidgoyal.net/kitty/) startup-session with one of those files.

For ease of use, you can create a script symlink and add that symlink to a location in $PATH, like so:
```bash
$ sudo ln kitty.sh /usr/bin/kittysh; sudo chmod +x /usr/bin/kittysh
```
