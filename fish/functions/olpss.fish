function olpss --wraps='olps && xdg-open localhost:8080 && WEBUI_AUTH=False DATA_DIR=~/.open-webui uvx --python 3.11 open-webui@latest serve' --description 'alias olpss=olps && xdg-open localhost:8080 && WEBUI_AUTH=False DATA_DIR=~/.open-webui uvx --python 3.11 open-webui@latest serve'
    olps && xdg-open localhost:8080 && WEBUI_AUTH=False DATA_DIR=~/.open-webui uvx --python 3.11 open-webui@latest serve $argv
end
