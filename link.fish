#!/usr/bin/fish
# abbr -a example -- 'path resolve'
set folder_path 'single-file-configs'

# single file configs
ln $(realpath $folder_path/wezterm.lua) ~/.wezterm.lua
ln $(realpath $folder_path/tmux.conf) ~/.tmux.conf
ln $(realpath $folder_path/llama_presets.ini) ~/.cache/llama.cpp/llama_presets.ini

# folders
rm -rf ~/.config/fish
ln -s $(realpath fish) ~/.config/
ln -s $(realpath mpv) ~/.config/
ln -s $(realpath nvim) ~/.config/
