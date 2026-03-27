function backmount --description "mount backup drive disk based on the first parameter"
    if test -n "$argv[2]"
        set disk $argv[2]
    else
        set disk "/dev/sda1"
    end
    echo "$disk and something else"

    if test "$argv[1]" = "l"
        command udisksctl unmount -b /dev/mapper/luks-64fd053d-ff6e-4524-b097-b52556e52740
        command udisksctl lock -b $disk
    else
        command udisksctl unlock -b $disk
        command udisksctl mount -o compress=zstd:10,autodefrag,noatime -b /dev/mapper/luks-64fd053d-ff6e-4524-b097-b52556e52740
    end
end
