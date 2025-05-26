# Filename: sample-completion.bash

_sample_completion() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    # If the previous word was 'sample', suggest .ly files
    if [[ ${COMP_CWORD} -eq 1 ]]; then
        COMPREPLY=( $(compgen -f -X '!*.ly' -- "${cur}") )
    else
        # Default Bash file completion for other arguments (e.g., if sample takes other options)
        # You might want to customize this further if sample has many specific options
        COMPREPLY=( $(compgen -f -- "${cur}") )
    fi

    return 0
}

complete -F _sample_completion sample
complete -F _sample_completion lilo


