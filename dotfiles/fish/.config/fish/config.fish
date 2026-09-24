if status is-interactive
    set -g fish_greeting
    alias l="eza -l --icons --colour --git"
    alias lt="eza -lT --icons --colour --git"
    fish_vi_key_bindings
    zoxide init fish | source
    starship init fish | source
end
