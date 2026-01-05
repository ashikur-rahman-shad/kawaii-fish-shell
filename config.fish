set -g kawaii_fish_dir (realpath ~/.config/fish/kawaii-fish-shell)
source "$kawaii_fish_dir/kawaii.fish"

set -x ANDROID_HOME ~/Android/Sdk

fish_add_path -g $ANDROID_HOME/cmdline-tools/latest/bin $ANDROID_HOME/platform-tools $ANDROID_HOME/emulator
