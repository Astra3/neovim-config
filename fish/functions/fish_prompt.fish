function fish_prompt --description 'Write out the prompt'
    set -l laststatus $status

    printf "%s[%s$(basename $PWD)%s]" (set_color normal) (set_color brcyan) (set_color normal)
    set_color -b normal
    if test $laststatus -eq 0
        printf "%s✔%s " (set_color -o green) (set_color normal)
    else
        printf "%s✘%s " (set_color -o red) (set_color normal)
    end
    if fish_is_root_user
        echo "# "
    else
        echo "% "
    end
end
