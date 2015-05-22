# show the git branch in the command line
# user@host:dir(branch)$ // clean
PS1="\\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$(__git_ps1 \"(%s)\")\$ "

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GIT_PS1_SHOWDIRTYSTATE=1
