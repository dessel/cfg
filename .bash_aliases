
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#
# Git
#
alias current-branch='git-current-branch'
alias git-uncommit='git reset --soft $(git log --format=%H -2 | tail -1)'
alias ga='git add'
alias gs='git status'
alias gdif='git diff'
alias gdiff='git diff --cached'
alias gl='git log'
alias gc='git checkout'
alias gg='git grep -n'
#
alias cats='highlight -O ansi'

# Config
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Bundle
alias be="bundle exec"
alias br="bundle exec rspec"
