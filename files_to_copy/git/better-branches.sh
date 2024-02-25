#!/bin/bash

# Print a string in a specific color
print_color() {
    printf "\e[0;$2m$1\e[0m"
}

# Number of results per page
RESULTS_PER_PAGE=10

# Go to the root of the git repository
cd "$(git rev-parse --show-toplevel)" || exit

# Get branches and their last commit date
git for-each-ref --sort='-authordate:iso8601' --format='%(refname:short) %(authordate:relative)' refs/heads |
while IFS= read -r line; do
    branch=$(echo "$line" | cut -d ' ' -f1)
    commit_date=$(echo "$line" | cut -d ' ' -f2-)
    echo "$(print_color "$branch" 32) ($(print_color "$commit_date" 33))"
done
