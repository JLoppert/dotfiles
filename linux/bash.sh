# setup .bash_profile
# append absolute paths to *.bash files
# ex: bash/alias.bash

# git should ignore changes to bash_profile
git update-index --assume-unchanged $ROOT/bash/.bash_profile

OSX="$ROOT/osx/*"
for script in "$ROOT"/*/*.bash ; do
  # ignore scripts for OSX
  if ! [[ $script =~ $OSX ]] ; then
    printf "\nsource \"$script\"" >> ~/.bash_profile
  fi
done
