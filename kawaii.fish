source "$kawaii_fish_dir/constant/character-codes.fish"
source "$kawaii_fish_dir/config/prompt-folder-icon.fish"
source "$kawaii_fish_dir/config/theme.fish"
# source "
source "$kawaii_fish_dir/function/prompt.fish"
source "$kawaii_fish_dir/script/prompt/ps1-directory.fish"
# source "$kawaii_fish_dir/welcome-message.fish"
set -g fish_greeting ""

# dircolors "$kawaii_fish_dir/config/plugins/dircolors"
set -x LS_COLORS (dircolors -b "$kawaii_fish_dir/config/plugins/dircolors")
