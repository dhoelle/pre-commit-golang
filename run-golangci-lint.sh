#!/bin/sh
#
# This script runs golangci-lint, assuming that it is vendored
# using go modules and github.com/myitcv/gobin

# if `gobin` is not installed, install it
# (see: http://stackoverflow.com/questions/592620/check-if-a-program-exists-from-a-bash-script)
command -v gobin >/dev/null 2>&1 || { echo >&2 "I require gobin but it's not installed; installing..."; GO111MODULE=off go get -u github.com/myitcv/gobin ; }

exec gobin -m -run github.com/golangci/golangci-lint/cmd/golangci-lint run "$@"
