function environment
    set -l env ""
    set -l env_fg $env_fg_color


    if test -n "$VIRTUAL_ENV"
        set env "  "
#         set env_fg "111,111,224"
    else if test -n "$NODE_ENV"
        set env "node"
    else if test -n "$JAVA_HOME"
        set env "java"
    else if test -n "$RUBY_ENV"
        set env "ruby"
    end

    if test -n "$env"
        set -l bgEnv (bgColor $env_bg_color)
        set -l fgEnv (fgColor $env_fg)
        set -l fgSymbol (fgColor $env_bg_color)
        set -l term_icon " "

        echo -e -n " $fgSymbol$LEFT_CIRCLE$fgEnv$bgEnv$env$RESET$fgSymbol$RIGHT_CIRCLE$RESET"
    end
end
