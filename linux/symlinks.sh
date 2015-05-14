LINUX=`dirname $BASH_SOURCE`
ROOT=`dirname $LINUX`

# Bash
ln -s $ROOT/bash/.bash_profile ~/.bash_profile

# Sublime Text 3
ln -s $ROOT/sublime/User ~/.config/sublime-text-3/Packages/

# Git
ln -s $ROOT/git/git_branch_terminal.sh ~/.git_branch_terminal.sh
ln -s $ROOT/git/git_completion_terminal.sh ~/.git_completion_terminal.sh