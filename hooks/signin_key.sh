#!/usr/bin/env bash

# If any command fails, exit immediately with that command's exit status
set -eo pipefail

signingKey=`git config --get user.signingkey`
defaultSign=`git config --get commit.gpgsign`


if [[ ! "$signingKey" =~ ^[A-Z.0-9]+$ ]];
then
    echo "No signing key found. Check global gitconfig"
    exit 1
fi

# it dosn't catch -S flag, so we recommend to use git config commit.gpgsign=true
if [[ ! "$defaultSign" =~ "true" ]];
then
    echo "No signin option set, try running: git config commit.gpgsign true"
    exit 1
fi

exit 0
