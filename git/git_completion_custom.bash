_g_modified()
{
    local cur=${COMP_WORDS[COMP_CWORD]}
    path="$( dirname "${BASH_SOURCE[0]}" )"
    modified_files=`ruby $path/git_completion_filenames.rb`
    COMPREPLY=( $(compgen -W "$modified_files" -- $cur) )
}

# git diff
complete -F _g_modified gd

# git checkout
complete -F _g_modified gco

# git reset
complete -F _g_modified gr
