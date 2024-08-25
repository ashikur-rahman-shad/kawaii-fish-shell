# Foreground colors
set -g BLACK '\e[30m'
set -g RED '\e[31m'
set -g GREEN '\e[32m'
set -g YELLOW '\e[33m'
set -g BLUE '\e[34m'
set -g MAGENTA '\e[35m'
set -g CYAN '\e[36m'
set -g WHITE '\e[37m'

# Background colors
set -g _BLACK '\e[40m'
set -g _RED '\e[41m'
set -g _GREEN '\e[42m'
set -g _YELLOW '\e[43m'
set -g _BLUE '\e[44m'
set -g _MAGENTA '\e[45m'
set -g _CYAN '\e[46m'
set -g _WHITE '\e[47m'

# Special text styles
set -g BOLD '\e[1m'
set -g DIM '\e[2m'
set -g ITALIC '\e[3m'
set -g UNDERLINE '\e[4m'
set -g BLINK '\e[5m'
set -g CONCEAL '\e[6m'
set -g REVERSE '\e[7m'
set -g RESET '\e[0m'

# Unicode symbols
# set -g TRIANGLE '\uE0B0'
# set -g LEFT_CIRCLE '\uE0B6'
# set -g RIGHT_CIRCLE '\uE0B4'
set -g TRIANGLE ''
set -g LEFT_CIRCLE ''
set -g RIGHT_CIRCLE ''

function bgColor
    set -l rgb (string split "," $argv[1])
    set -l r $rgb[1]
    set -l g $rgb[2]
    set -l b $rgb[3]
    echo "\e[48;2;$r;$g;"$b"m"
end

function fgColor
    set -l rgb (string split "," $argv[1])
    set -l r $rgb[1]
    set -l g $rgb[2]
    set -l b $rgb[3]
    echo "\e[38;2;$r;$g;"$b"m"
end
