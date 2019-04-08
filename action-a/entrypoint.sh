#!/bin/sh -l

sh -c "echo $*"

echo "$GITHUB_REF"

cat "$GITHUB_EVENT_PATH"
