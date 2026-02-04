_paste_email_completions() {
    local cur
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"

    # Path to your list of completions
    # Change this to the actual path of your file
    local list_file="$HOME/dev/tools/paste_email.txt"

    if [[ -f "$list_file" ]]; then
        # 1. 'cat' the file
        # 2. 'cut -d';' -f1' grabs the first column
        # 3. 'compgen' filters the result based on what you've typed
        local options=$(cut -d';' -f1 "$list_file")
        COMPREPLY=( $(compgen -W "$options" -- "$cur") )
    fi
}

# Register the function to handle 'paste_email.rb'
complete -F _paste_email_completions paste_email.rb