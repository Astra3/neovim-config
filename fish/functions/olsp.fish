function olsp --description 'start ollama, start and open webui and then, after ctrl-c, stop ollama'
    llama-server --port 5000 &
    echo "Started llama server"
    xdg-open localhost:8080 && WEBUI_AUTH=False DATA_DIR=~/.open-webui uvx --python 3.11 open-webui@latest serve

    if test 0 -ne $status
        echo "Open-WebUI did not exit cleanly!"
    end

    kill $(jobs --last --pid | grep '[0-9*]')
    echo "Stopped llama server"
    return 0
end
