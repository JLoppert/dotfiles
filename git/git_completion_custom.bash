# replace everything up to last / with ''
# path/to/file/name.extension => name.extension
# path/to/directory/ =>
_git_modified_files()
{
    local cur=${COMP_WORDS[COMP_CWORD]}
    modified_files=`git status --porcelain | sed -e 's/.*\///g'`
    COMPREPLY=( $(compgen -W "$modified_files" -- $cur) )
}

# git diff
complete -F _git_modified_files gd

# git checkout
complete -F _git_modified_files gco

# git reset
complete -F _git_modified_files gr
