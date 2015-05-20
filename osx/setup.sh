OSX=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ROOT=`dirname $OSX`

bash $OSX/defaults.sh
bash $OSX/symlinks.sh
bash $OSX/bash.sh
