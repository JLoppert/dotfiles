# Change to the root level directory the current git repository
alias cdg='cd $(git rev-parse --show-toplevel || pwd)'
alias get='git'

alias gau='git add -u'
alias gaa='git add -A'
alias gr='git reset HEAD'
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch --color'
alias gbc='git rev-parse --abbrev-ref HEAD' # current branch
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.