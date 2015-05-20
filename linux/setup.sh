LINUX=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ROOT=`dirname $LINUX`

bash $LINUX/symlinks.sh
bash $LINUX/bash.sh
