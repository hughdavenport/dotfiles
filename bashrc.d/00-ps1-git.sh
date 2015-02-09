style_git_chars="${RESET}${BASE2_FG}"
style_git_branch="${RESET}${CYAN}"
style_git_dirty="${RESET}${ORANGE}"
style_git_flags="${RESET}${RED}"

initial_commit_string="## Initial commit on master"
no_branch_string="## HEAD (no branch)"

# Adapted (quite heavily) from: https://github.com/cowboy/dotfiles
function prompt_git() {
    local status flags branch
    status="$(git status -b --porcelain 2>/dev/null)"
    # fail early
    [[ $? != 0 ]] && return;

    # Get branch name and print
    branch="$(echo "$status" | head -n 1)"
    dirtyremote=""
    if [[ "$branch" = "$initial_commit_string" ]]; then
        branch="(init)"
    elif [[ "$branch" = "$no_branch_string" ]]; then
        # Will show a 7 hex char string
        branch="$(git rev-parse --short HEAD)"
    else
        # check if we are ahead/behind of the tracking branch
	dirtyremote=$(echo "$branch" | grep -E '\[(ahead|behind) [0-9][0-9]*\]$' | sed -r -e 's/.*(\[(ahead|behind) [0-9][0-9]*\])$/\1/')
        # Just a normal branch name
        branch="${branch:3}"
	# Actually may have a tracking branch
	branch="${branch/%...*/}"
    fi
    echo -en "${style_git_chars} on ${style_git_branch}${branch}"

    if [[ "$dirtyremote" ]]; then
        echo -en " ${style_git_dirty}${dirtyremote}"
    fi

    # Find out dirtyness and print
    flags=""
    # Any char in first status, something to be commited
    if echo "$status" | tail -n +2 | grep -E '^[^ ?]' >/dev/null; then
        flags+="+"
    fi
    # Any char in second status, something unstaged
    if echo "$status" | tail -n +2 | grep -E '^[^?][^ ?]' >/dev/null; then
        flags+="!"
    fi
    # ?? is untracked
    if echo "$status" | tail -n +2 | grep -E '^\?\?' >/dev/null; then
        flags+="?"
    fi
    # !! is ignored, so we will to
    if [[ "$flags" ]]; then
        echo -en " ${style_git_flags}[${flags}]";
    fi
}
