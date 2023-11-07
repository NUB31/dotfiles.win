# define aliases
alias grep="grep --color"
alias ls="ls --color"
alias ll="ls -la"
alias pat="cat ~/.bak/PAT | clip"
alias k="kubectl"

# init starship
export STARSHIP_CONFIG=~/.config/startship.toml

major="${BASH_VERSINFO[0]}"
minor="${BASH_VERSINFO[1]}"

if ((major > 4)) || { ((major == 4)) && ((minor >= 1)); }; then
    source <('/c/Program Files/starship/bin/starship.exe' init bash --print-full-init)
else
    source /dev/stdin <<<"$('/c/Program Files/starship/bin/starship.exe' init bash --print-full-init)"
fi
