function kawaii_Dir
    set -l dir "root"$(pwd)
    set -l root_sign '🔐'
    set -l dir (string replace "root$HOME" "🏠" $dir)
    set -l dir (string replace "root/mnt/common" "🏡" $dir)
    set -l dir (string replace "root" " $root_sign " $dir)
    set -l dir (string replace "Code" "  "  $dir)
    set -l dir (string replace "laravel" "  "  $dir)
    echo $dir
end
