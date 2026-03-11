_paste_email_completions() {
    local cur
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
# 1. Temporarily remove the colon from the list of word-break characters
    local COMP_WORDBREAKS=${COMP_WORDBREAKS//:}

    local list_file="$HOME/bin/live.txt"

    if [[ -f "$list_file" ]]; then
        # 1. 'cat' the file
        # 2. 'cut -d';' -f1' grabs the first column
        # 3. 'compgen' filters the result based on what you've typed
        local options=$(cat "$list_file")
        COMPREPLY=( $(compgen -W "$options" -- "$cur") )
    fi
}

# Register the function to handle 'paste_email.rb'

complete -F _paste_email_completions lived 

