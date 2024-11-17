function ls
    lsd --group-directories-first $argv
end

function tree
    lsd --group-directories-first --tree $argv
end


function custom_prompt
    # Print the current working directory
    echo -e -n '\n'
    set dir $(pwd)
    set dir (string replace "$HOME" "~" $dir)
    echo -e "$(prompt_dir)$(git_branch)$(environment)"
    # echo -n (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '(set_color normal)
    echo -n -e $BLINK(set_color blue)' ⌨'$RESET(set_color green)' ❯ '

end

function fish_prompt
    custom_prompt
end

function fish_right_prompt
    set -l symbol_color "$(fgColor $bgColors[$(math "(1 % $no_of_bg_colors)+1")])"
    set -l fg_color "$(fgColor $fgColors[$(math "(1 % $no_of_fg_colors)+1")])"
    set -l bg_color "$(bgColor $bgColors[$(math "(1 % $no_of_bg_colors)+1")])"
    set -l text "$(date '+%I:%M %p')"
    echo -e "$RESET$symbol_color░▒▓$fg_color$bg_color$text$RESET$symbol_color▓▒░"
end

# keyboard char 
