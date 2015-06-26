path="$( dirname "${BASH_SOURCE[0]}" )"

# Change to the root level directory the current git repository
alias gcd='cd $(git rev-parse --show-toplevel || pwd)'

# Man
g () {
  man "git-$1"
}

# Add
ga () {
  git add -- `ruby $path/git_completion_fullpath.rb $1`
  git status
}

# Diff
gd () {
  git diff -- `ruby $path/git_completion_fullpath.rb $1`
}

# Checkout
gco () {
  git checkout -- `ruby $path/git_completion_fullpath.rb $1`
  git status
}

gr () {
  git reset HEAD -- `ruby $path/git_completion_fullpath.rb $1`
  git status
}

# Commit
gc () {
  git commit -m "$1"
}

# Pull
gp () {
  git pull origin `git rev-parse --abbrev-ref HEAD` --prune
}

# Status
alias s='git status'
alias gs='git status -sb'

# Log
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# Push
alias gpo='git push origin HEAD'

# Branch
alias gb='git branch --color'
alias gbn='git checkout -b' # create new branch
alias gbc='git rev-parse --abbrev-ref HEAD' # current branch

# Reset
alias gnuke="git reset HEAD --hard"
