_paste_station_completions() {
    local cur
    COMPREPLY=()
    
    # This line tells bash-completion to ignore the colon as a word break
    # so that 'edw:tuh' is treated as one single token.
    _get_comp_words_by_ref -n : cur

    local list_file="$HOME/bin/live.txt"

    if [[ -f "$list_file" ]]; then
        local options=$(cat "$list_file")
        
        # We use -W to provide the list and let compgen match against $cur
        COMPREPLY=( $(compgen -W "$options" -- "$cur") )
    fi
    
    # Crucial: This fix ensures the colon doesn't cause a double-prefix error
    __ltrim_colon_completions "$cur"
}

complete -F _paste_station_completions lived