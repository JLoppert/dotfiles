# show the git branch in the command line
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
# user@host:dir(branch)$
PS1="\\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$(parse_git_branch)\[\e[m\]\$ "
PS2='> '
PS4='+ '
}

proml

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced