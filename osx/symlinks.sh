OSX=`dirname $BASH_SOURCE`
ROOT=`dirname $OSX`

# Bash
ln -s $ROOT/bash/.bash_profile ~/.bash_profile

# Sublime Text 3
ln -s $ROOT/sublime/Packages /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages