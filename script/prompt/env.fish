function environment
    set -l env_info
    set -l env_fg $env_fg_color

    if test -n "$VIRTUAL_ENV"
        set -l version (python --version 2>&1 | string split ' ')[2]
        set -a env_info "🐍 $version"
        # set -a env_info " $version"
    end

    if test -n "$NODE_ENV"
        set -l version (node -v)
        set -a env_info "🟢 $version"
        # set -a env_info " $version"
    end

    if test -n "$JAVA_HOME"
        set -l version (java -version 2>&1 | string match -r '[\d\.]+' | head -n 1)
        set -a env_info "☕ $version"
        # set -a env_info " $version"
    end

    if test -n "$RUBY_ENV"
        set -l version (ruby -v | string split ' ')[2]
        set -a env_info "💎 $version"
        # set -a env_info " $version"
    end

    for env in $env_info
        set -l bgEnv (bgColor $env_bg_color)
        set -l fgEnv (fgColor $env_fg)
        set -l fgSymbol (fgColor $env_bg_color)

        echo -e -n " $fgSymbol$LEFT_CIRCLE$fgEnv$bgEnv $env $RESET$fgSymbol$RIGHT_CIRCLE$RESET"
    end
end