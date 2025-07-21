function fish_prompt
    set -l last_status $status
    set -l stat
    if test $last_status -ne 0
        set stat (set_color red)"[$last_status]"(set_color normal)
    end
    string join '' -- (prompt_pwd) (set_color green) (fish_git_prompt) (set_color normal) $stat '> '
end
