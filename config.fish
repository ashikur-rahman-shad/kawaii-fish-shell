set -g kawaii_fish_dir (realpath ~/.config/fish/kawaii-fish)
source "$kawaii_fish_shell/kawaii.fish"

set -x ANDROID_HOME ~/Android/Sdk

fish_add_path -g $ANDROID_HOME/cmdline-tools/latest/bin $ANDROID_HOME/platform-tools $ANDROID_HOME/emulator
