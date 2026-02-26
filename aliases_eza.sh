#!/bin/bash

# --- EZA CUSTOM BUNDLE ---

# 1. Colors & Icons Configuration
# Forces sharp colors and ensures icons are handled correctly
export EZA_ICONS_AS_TEXT=1
export EZA_COLORS="da=36:di=1;34:ex=1;32:fi=0:so=35:pi=33:ln=36:bd=34;46:cd=34;43"

# 2. The Aliases
if command -v eza >/dev/null 2>&1; then
    # Your requested "Long + Git" style
    alias el='eza --long --git --icons --group-directories-first'

    # Standard quick view
    alias l='eza --icons --classify --group-directories-first'

    # Detailed view with headers
    alias ll='eza --long --icons --header --group --group-directories-first'

    # Show all (including hidden)
    alias la='eza --all --long --icons --group-directories-first'

    # Tree view (2 levels)
    alias lt='eza --tree --level=2 --icons'

    # "Spiky" Sorts: Newest files and Largest files
    alias lnew='eza --long --sort=modified --reverse --icons --limit=10'
    alias lsize='eza --long --sort=size --icons'

    # 3. The "Auto-List" Function
    # Automatically runs 'l' every time you 'cd' into a folder
  
  # Only show Directories (Quickly find where to go next)
alias ld='eza --only-dirs --icons'

# Show Only Git-modified files (See what you've actually changed)
alias eg='eza --long --git --modified'

# The "Newest First" List (Perfect for finding that file you JUST downloaded)
alias lnew='eza --long --sort=modified --reverse --icons --limit=10'

# Full Screen Grid (Best for folders with 100+ files)
alias lg='eza --grid --icons --across'
    cd() {
        builtin cd "$@" && l
    }

fi