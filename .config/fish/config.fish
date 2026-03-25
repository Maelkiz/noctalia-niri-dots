source (/usr/bin/starship init fish --print-full-init | psub)

function fish_greeting
    #fastfetch
end

function fish_user_key_bindings
    bind ctrl-backspace backward-kill-word
    bind ctrl-delete kill-word
    bind ctrl-tab accept-autosuggestion
end

alias ls='eza --icons'
alias eduroam='nmcli --ask connection up eduroam'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

set -gx PATH ~/.local/bin $PATH
