OSX=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ROOT=`dirname $OSX`

# Bash
ln -sf $ROOT/bash/.bash_profile ~/.bash_profile

# Sublime Text 3
ln -sf $ROOT/sublime/User /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/