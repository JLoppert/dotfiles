LINUX=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ROOT=`dirname $LINUX`

bash $LINUX/symlinks.sh

# dynamically rewrite .bash_profile with absolute paths to .*.sh files
# ex: bash/.alias.sh
OSX="$ROOT/osx/*"
for script in "$ROOT"/*/*.bash ; do
  # ignore scripts for OSX
  if ! [[ $script =~ $OSX ]] ; then
    printf "\nsource \"$script\"" >> ~/.bash_profile
  fi
done