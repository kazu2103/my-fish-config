function fish_prompt
    test $SSH_TTY
    and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '
    test $USER = 'root'
    and echo (set_color red)"#"

    # Main
    echo -n (prompt_pwd)(set_color green)' ❯ '

    # Git
    set last_status $status
    printf '%s ' (__fish_git_prompt)
    set_color normal
end

function fish_right_prompt -d "Write out the right prompt"
    date '+%H:%M:%S'
end

