#!/bin/bash
set -e #ERR
trap 'echo "there is an error in $LINENO ,command; $BASH_COMMAND"' ERR
echo "hello world"
echoo "hi" 