function git_branch
    set -l bgGit (bgColor $git_bg_color)
    set -l fgGit (fgColor $git_fg_color)
    set -l fgSymbol (fgColor $git_bg_color)
    set -l gitSymbol ""

    set -l git_branch (git branch --show-current 2>/dev/null)
    if test -n "$git_branch"
        echo -e -n " $fgSymbol$LEFT_CIRCLE$fgGit$bgGit$gitSymbol $git_branch$RESET$fgSymbol$RIGHT_CIRCLE$RESET"
    end
end



