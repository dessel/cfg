
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#
# Git
#
alias current-branch='git-current-branch'
alias git-uncommit='git reset --soft $(git log --format=%H -2 | tail -1)'
alias gst='git status'
alias gdiff='git diff'
alias glog='git log'
alias gcheck='git checkout'

#
alias cats='highlight -O ansi'

# Config
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
