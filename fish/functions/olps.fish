function olps --description "toggle ollama service"
    systemctl is-active ollama -q
    if test 0 -eq $status
        sudo systemctl stop ollama
        echo "Stopped ollama"
        return 1
    else
        sudo systemctl start ollama
        echo "Started ollama"
        return 0
    end
end
