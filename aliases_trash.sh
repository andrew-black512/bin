alias dl='trash-put -v -i'
# General trash commands
alias tp='trash-put -v'              # Trash a file or directory
alias tl='trash-list | sort -r | less' # List trash, newest first
alias trm='trash-rm'              # Remove specific files from trash
alias temptypurge='trash-empty'   # Empty the entire trash bin


# VMS-style Trash with Confirmation
tpi() {
    read -p "Trash ${1}? (y/n): " confirm
    if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
        trash-put "$@"
        echo "Item trashed."
    else
        echo "Aborted."
    fi
}

tp1() {
    local all=false
    for file in "$@"; do
        if [ "$all" = true ]; then
            trash-put "$file"
            echo "Trashed: $file"
            continue
        fi

        # The VMS Prompt
        echo -n "Trash $file? [Y]es, [N]o, [A]ll, [Q]uit: "
        read -r choice
        case "$choice" in
            [yY]*) 
                trash-put "$file"
                echo "Trashed: $file" ;;
            [aA]*) 
                all=true
                trash-put "$file"
                echo "Trashed: $file (and all remaining)" ;;
            [qQ]*) 
                echo "Aborting remaining files."
                return ;;
            *) 
                echo "Skipped: $file" ;;
        esac
    done
}