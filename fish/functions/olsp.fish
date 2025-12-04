function olsp --description 'start ollama, start and open webui and then, after ctrl-c, stop ollama'
    sudo systemctl start ollama
    if test 0 -ne $status
        echo "Could not start ollama properly"
        return 1
    end
    echo "Started ollama"
    xdg-open localhost:8080 && WEBUI_AUTH=False DATA_DIR=~/.open-webui uvx --python 3.11 open-webui@latest serve

    if test 0 -ne $status
        echo "Open-WebUI did not exit cleanly!"
    end

    sudo systemctl stop ollama
    if test 0 -ne $status
        echo "Could not stop ollama properly"
        return 1
    end
    echo "Stopped ollama"
    return 0
end
