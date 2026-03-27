function mpvdisc --description "initialize mpv with DVD or Blu-Ray playback and cache"
    set error_string "First parameter must be 'bluray' or 'dvd'"
    # if test -z $argv[1]
    #     echo $error_string
    #     return 1
    # end
    switch $argv[1]
        case 'dvd'
            set path 'dvd://'
            set device '--dvd-device=/dev/sr0'
        case 'bluray' 'br' 'bd'
            set path 'bd://'
            set device '--bluray-device=/dev/sr0'
        case '*'
            echo $error_string
            return 1
    end
    command mpv $path $device --cache
end
