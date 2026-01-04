function llsp --wraps='llama-server --port 8080 --models-preset presets.ini --models-max 1 --jinja --mmap' --description 'alias llsp=llama-server --port 8080 --models-preset presets.ini --models-max 1 --jinja --mmap'
    llama-server --port 8080 --models-preset ~/.cache/llama.cpp/llama_presets.ini --models-max 1 --jinja --mmap $argv
end
