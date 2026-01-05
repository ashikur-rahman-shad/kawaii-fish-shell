set -g fgColors
set -g bgColors

for i in (seq (count $theme_bg_colors))
    set -a bgColors (echo $theme_bg_colors[$i])
end

for i in (seq (count $theme_fg_colors))
    set -a fgColors (echo $theme_fg_colors[$i])
end

set -g no_of_bg_colors (count $bgColors)
set -g no_of_fg_colors (count $fgColors)

function folderColor 
    set -l text $argv[1]
    set -l bgThis $(bgColor $argv[2])
    set -l fgThis $(fgColor $argv[3])
    set -l bgNext $(bgColor $argv[4])
    set -l symbol_color $(fgColor $argv[2])
    echo -n "$fgThis$bgThis $text $bgNext$symbol_color$TRIANGLE"
#     echo -n "$fgThis$bgThis$text$bgNext$symbol_color$RIGHT_CIRCLE$RESET"
end

function lastFolderColor 
    set -l text $argv[1]
    set -l bgThis $(bgColor $argv[2])
    set -l fgThis $(fgColor $argv[3])
    set -l bgNext $(bgColor $argv[4])
    set -l symbol_color $(fgColor $argv[2])
    echo -n "$fgThis$bgThis $text $RESET$symbol_color$TRIANGLE$RESET"
#     echo -n "$fgThis$bgThis$text$RESET$symbol_color$RIGHT_CIRCLE$RESET"

end

function prompt_dir
  set -l dir $(kawaii_Dir)
  set -l dir "$USER/$dir"
  set -l dir_array (string split "/" $dir)
  set -l array_length (count $dir_array)
  set -l kawaii_prompt "$(fgColor $bgColors[$(math "(1 % $no_of_bg_colors)+1")])░▒▓"

  for i in (seq 1 $(math $array_length-1))
    set kawaii_prompt $kawaii_prompt"$(
    folderColor "$dir_array[$i]"\
    $bgColors[$(math "($i % $no_of_bg_colors)+1")]\
    $fgColors[$(math "($i % $no_of_fg_colors)+1")]\
    $bgColors[$(math "(($i+1) % $no_of_bg_colors)+1")]\
    )"
    # echo "$(bgColor $(math "($i % $no_of_colors)+1")) Hi"
  end

  set kawaii_prompt $kawaii_prompt"$(
    lastFolderColor "$dir_array[$array_length]"\
    $bgColors[$(math "($array_length % $no_of_bg_colors)+1")]\
    $fgColors[$(math "($array_length % $no_of_fg_colors)+1")]\
    $bgColors[$(math "(($array_length+1) % $no_of_bg_colors)+1")]\
    )"
  
  set -l pre "$(fgColor $theme_color1)"
#   set -l pre "$(fgColor $theme_color1)$LEFT_CIRCLE"
  echo -e "$pre$kawaii_prompt"
end
