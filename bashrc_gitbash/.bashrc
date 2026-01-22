# SHIORI Aliase
alias shp='shiori print --portable'
alias sh='shiori'
alias shadd='shiori add $1 --portable'
alias shopen='shiori open $1 --portable'
alias shupdate='shiori update $1 --portable'
alias shdel='shiori delete $1 --portable'
alias shserve='shiori serve --portable'

# file dirs
alias ac='cd "/c/Users/acerezo/OneDrive - Analog Devices, Inc/Documents/_Aldrin/02_Aldrin"'
alias adi='cd "/c/Users/acerezo/OneDrive - Analog Devices, Inc/Documents/_Aldrin/01_Analog"'
alias notes='cd "/c/Users/acerezo/Documents/obsidian-notes"'

alias goto_path='cd "$(fdir | fzf)"'

# apps
alias u='micro'

# micro + fd + fzf
alias fu='micro "$(fd -e md | fzf --preview "bat {}")"'

# search directories
alias find_dir='fd -t d'

# search markdown
alias find_md='fd -e md'

# open dir using fzf
alias op='open "$(fd -t d | fzf)"'


# using explorer
alias open='explorer'


# add to environement variable
alias env='echo "export PATH=/PATH:'$(pwd)'" >> ~/.bashrc'

#eval "$(fzf --bash)"


function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"                            }
}

# csam image downloader
export PATH=$PATH:"/c/Users/acerezo/OneDrive - Analog Devices, Inc/Documents/_Aldrin/02_Aldrin/python-files/ADI/csam_img/dist"

# pse data downloader
export PATH=$PATH:"/c/Users/acerezo/OneDrive - Analog Devices, Inc/Documents/_Aldrin/02_Aldrin/python-files/pse-data/dist"

# file/dir downloads deleter
export PATH=$PATH:"/c/Users/acerezo/OneDrive - Analog Devices, Inc/Documents/_Aldrin/02_Aldrin/python-files/delete-files-dirs/dist"

# Python scripts
export PATH=$PATH:"/c/Users/acerezo/OneDrive - Analog Devices, Inc/Documents/_Aldrin/02_Aldrin/python-files/_scripts"


set UV_NATIVE_TLS=1
