#!/usr/bin/env bash

# Sanity check of required tools and environment settings
# This script exits with status code=0 if everything is aye-okay
source "$(dirname "$0")/_support-functions.sh"

function validate_local_env {
    validate_silently "make --version" "make is not installed" || return 1
    validate_silently "mvn --version" "Maven is not installed" || return 1
    validate_silently "pipx --version" "Pipx is not installed" || return 1

	print_exit_message OK "Hooray! You seem to be $(green healthy) 🎉"
}

if [ -z $SKIP_EXEC ]
then
    validate_local_env
fi