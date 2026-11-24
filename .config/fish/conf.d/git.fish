# Expand pathspecs for Git commands.
#
#   `*.md` --> `-- '*.md'`
#   `!*.md` --> `-- ':!*.md'`

function __git_pathspec
    set -l tokens (commandline -opc)

    if test "$tokens[1]" != git
        functions -- "$tokens[1]" |
            string match -qr '^\s*(command\s+)?git\s'
        or return 1
    end

    set -l pattern (string replace -r '^!' ':!' -- "$argv[1]")

    contains -- -- $tokens; or printf '%s ' --
    string escape -- "$pattern"
end

abbr --add git-pathspec \
    --position anywhere \
    --regex '(?![\x22\x27])(?:!.+|.*[*?].*)' \
    --function __git_pathspec
