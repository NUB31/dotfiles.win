# define aliases
alias grep="grep --color"
alias ls="ls --color"
alias k="kubectl"
alias ll="ls -la"
alias pat="cat ~/.bak/PAT | clip"
alias gut="cleanbranches"
alias config="nano ~/.bashrc"
alias fucking="sudo"

# define functions
cleanbranches(){
    git fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}' ) ; do git branch -D $branch ; done
}

# init starship
export STARSHIP_CONFIG=~/.config/starship.toml
eval "$(starship init bash)"

# use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion
