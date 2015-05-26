path="$( dirname "${BASH_SOURCE[0]}" )"

# Change to the root level directory the current git repository
alias cdg='cd $(git rev-parse --show-toplevel || pwd)'

# Man
g () {
  man "git-$1"
}

# Diff
gd () {
  git diff -- `ruby $path/git_completion_fullpath.rb $1`
}

# Checkout
gco () {
  git checkout -- `ruby $path/git_completion_fullpath.rb $1`
}

# Commit
gc () {
  git commit -m "$1"
}

# Status
alias s='git status'
alias gs='git status -sb'

# Add
alias ga='git add -A'
alias gau='git add -u'

# Log
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# Undo
alias gco='git checkout'
alias gr='git reset HEAD'

# Push/Pull
alias gp='git pull --prune'
alias gpo='git push origin HEAD'

# Branch
alias gb='git branch --color'
alias gbn='git checkout -b' # create new branch
alias gbc='git rev-parse --abbrev-ref HEAD' # current branch
