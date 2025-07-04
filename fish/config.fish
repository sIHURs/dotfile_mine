if status is-interactive
    # Commands to run in interactive sessions can go here
end

export PATH="$HOME/.emacs.d/bin:$PATH"

# run source ~/.config/fish/config.fish to reload the config.fish file

set fish_greeting "" # Supresses fish's intro message

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
alias lg lazygit
alias c clear
# alias ide "tmux split-window -v -p 30; tmux split-window -h -p 66; tmux split-window -h -p 50"
alias ide "tmux split-window -v -p 30" # when run the command above, the prompt in some pane show wrong, odd problem, maybe its caused by the tide plugin


command -qv nvim && alias vim nvim


if type -q exa
    alias ll "exa -l -g --icons"
    alias lla "ll -a"
end

# lf

#lfcd () {
#    tmp="$(mktemp)"
#    # `command` is needed in case `lfcd` is aliased to `lf`
#    command lf -last-dir-path="$tmp" "$@"
#    if [ -f "$tmp" ]; then
#        dir="$(cat "$tmp")"
#        rm -f "$tmp"
#        if [ -d "$dir" ]; then
#            if [ "$dir" != "$(pwd)" ]; then
#                cd "$dir"
#            fi
#        fi
#    fi
#}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# if test -f /opt/homebrew/anaconda3/bin/conda
#     eval /opt/homebrew/anaconda3/bin/conda "shell.fish" hook $argv | source
# end
# <<< conda initialize <<<


# <<< nvm env <<<
set -x NVM_DIR "$HOME/.nvm"

if test -s /usr/local/opt/nvm/nvm.sh
    source /usr/local/opt/nvm/nvm.sh
end

if test -s /usr/local/opt/nvm/etc/bash_completion
    source /usr/local/opt/nvm/etc/bash_completion
end
