LINUX=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ROOT=`dirname $LINUX`

# Bash
ln -sf $ROOT/bash/.bash_profile ~/.bash_profile

# Sublime Text 3
ln -sf $ROOT/sublime/User ~/.config/sublime-text-3/Packages/

# Git
ln -sf $ROOT/git/git_branch_terminal.sh ~/.git_branch_terminal.sh
ln -sf $ROOT/git/git_completion_terminal.sh ~/.git_completion_terminal.sh