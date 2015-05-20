# setup .bash_profile
# append absolute paths to *.bash files
# ex: bash/alias.bash
OSX=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ROOT=`dirname $OSX`

# git should ignore changes to bash_profile
git update-index --assume-unchanged $ROOT/bash/.bash_profile

LINUX="$ROOT/linux/*"
for script in "$ROOT"/*/*.bash ; do
  # ignore scripts for other os
  if ! [[ $script =~ $LINUX ]] ; then
    printf "\nsource \"$script\"" >> ~/.bash_profile
  fi
done
