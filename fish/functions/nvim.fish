function nvim
    if test "$argv[1]"
        command /usr/bin/nvim $argv
    else
        command /usr/bin/nvim .
    end
end
