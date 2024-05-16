function fish_prompt
    set -g __fish_git_prompt_showdirtystate 1
    set -g ___fish_git_prompt_char_stateseparator ''

    set -l prompt_error $status

    string join '' -- \
        (prompt_segment dir (prompt_pwd) --color green) \
        (prompt_segment git (fish_git_prompt %s) --color green) \
        (prompt_segment vim (prompt_mode) --color grey --hide-if I) \
        (prompt_segment err $prompt_error --color red --hide-if 0) \
        \n (set_color green --bold) '$ ' (set_color normal)
end

function prompt_segment
    argparse 'color=' 'hide-if=' -- $argv
    set -l key $argv[1]
    set -l value $argv[2]
    set -l color $_flag_color
    set -l hide_if $_flag_hide_if

    if test "$value" != "" && test "$value" != "$hide_if"
        string join '' -- \
            (set_color $color) '‹' $key ':' \
            (set_color --bold) $value (set_color normal) \
            (set_color $color) '› ' (set_color normal)
    end
end

function prompt_mode
    switch $fish_bind_mode
        case default
            echo 'N'
        case insert
            echo 'I'
        case replace_one
            echo 'R'
        case visual
            echo 'V'
    end
end

function fish_mode_prompt
end
