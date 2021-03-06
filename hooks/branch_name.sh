#!/usr/bin/env bash

set -eo pipefail

local_branch="$(git branch --show-current)"

valid_branch_regex="^(feat|bugfix|docs|style|release|hotfix|fix)\/[a-z|A-Z]+-[0-9]+|main|master$"

message="There is something wrong with your branch name. Branch names in this project must adhere to this contract: $valid_branch_regex. Your commit will be rejected. You should rename your branch to a valid name and try again."

if [[ ! $local_branch =~ $valid_branch_regex ]]
then
    echo "$message"
    exit 1
fi

exit 0
