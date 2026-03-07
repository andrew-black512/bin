#!/bin/bash

# --- THE SPIKY EZA BUNDLE ---

# 1. Aesthetics & Icons
export EZA_ICONS_AS_TEXT=1
export EZA_COLORS="da=36:di=1;34:ex=1;32:fi=0:so=35:pi=33:ln=36:bd=34;46:cd=34;43"

# 2. Functional Aliases
if command -v eza >/dev/null 2>&1; then
    # The "Long & Git" (Your Request)
    alias el='eza --long --git --icons --group-directories-first'

    # The "Quick Look"
    alias l='eza --icons --classify --group-directories-first'

    # The "Deep Dive" (Headers and Permissions)
    alias ll='eza --long --icons --header --group --group-directories-first'

    # The "Secret Finder" (Hidden files)
    alias la='eza --all --long --icons --group-directories-first'

    # FIXED: The "Git-Only" View (Only shows changed/new files)
    alias eg='git status --short | awk "{print \$2}" | xargs -r eza --long --git --icons'

    # The "Newest 10" (Spiky/Fast discovery)
    alias lnew='eza --long --sort=modified --reverse --icons --limit=10'

    # 3. The "Auto-List" Function
    # Automatically shows files when you change directories
    cd() {
        builtin cd "$@" && echo $(realpath .)
    }
    # 4. The Cheat Sheet
alias ezhelp='echo -e "
\033[1;34m--- EZA BUNDLE CHEAT SHEET ---\033[0m
\033[1;32mel\033[0m    : Long view with Git status
\033[1;32ml\033[0m     : Quick icon view (runs after every cd)
\033[1;32mll\033[0m    : Detailed view with headers
\033[1;32mla\033[0m    : Show hidden files
\033[1;32meg\033[0m    : Show ONLY modified Git files
\033[1;32mlnew\033[0m  : Show 10 newest files
\033[1;32mlt\033[0m    : Tree view (2 levels deep)
"'
fi

alias lg='eza -al --sort=time --git'