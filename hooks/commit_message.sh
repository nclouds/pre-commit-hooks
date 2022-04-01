#!/usr/bin/env bash

# If any command fails, exit immediately with that command's exit status
set -eo pipefail

input=$1
valid_msg_regex="^(feat|fix|docs|style):*"
while IFS= read -r line
do
  echo "$line"
  if [[ ! "$line" =~ $valid_msg_regex ]]; then
    echo "The commit message does not follow the valid format: $valid_msg_regex"
    exit 1
  fi
done < "$input"

exit 0