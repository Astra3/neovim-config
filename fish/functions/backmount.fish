function backmount
    if test $argv[2]
        set disk $argv[2]
    else
        set disk "/dev/sda"
    end

    if test "$argv[1]" = "l"
        command udisksctl unmount -b /dev/mapper/luks-1370bdf2-b81f-469b-98a5-c5e0947d64a5
        command udisksctl lock -b $disk
    else
        command udisksctl unlock -b $disk
        command udisksctl mount -o compress=zstd:10,autodefrag,noatime -b /dev/mapper/luks-1370bdf2-b81f-469b-98a5-c5e0947d64a5
    end
end
