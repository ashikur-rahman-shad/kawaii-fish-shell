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
    echo -e "$(prompt_dir)"
    # echo -n (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '(set_color normal)
    echo -n -e $BLINK(set_color blue)' ⌨'$RESET(set_color green)' ❯ '

end

function fish_prompt
    custom_prompt
end

# keyboard char 