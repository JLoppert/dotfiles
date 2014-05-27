###########################################
# show the git branch in the command line #
###########################################
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;"\w"\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="${TITLEBAR}\
\\[\e[0;31m\]\u\[\e[m\]:\[\e[0;34m\]\$(parse_git_branch)\[\e[m\]\
\$ "
PS2='> '
PS4='+ '
}
proml

source ~/.git_completion

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


alias st='open /Applications/Sublime\ Text.app/'
