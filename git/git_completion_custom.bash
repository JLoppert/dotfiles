# replace everything up to last / with ''
# TODO: include directory
# path/to/file/name.extension => name.extension
# path/to/directory/ =>
_g_modified()
{
    local cur=${COMP_WORDS[COMP_CWORD]}
    modified_files=`ruby git_completion_filenames.rb`
    # echo "$modified_files"
    # modified_directories=`$modified | sed -e 's/.*\///g'`
    COMPREPLY=( $(compgen -W "$modified_files" -- $cur) )
}

# git diff
complete -F _g_modified gd

# git checkout
complete -F _g_modified gco

# git reset
complete -F _g_modified gr
