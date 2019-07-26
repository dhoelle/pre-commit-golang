#!/bin/sh
exec gobin -m -run github.com/golangci/golangci-lint/cmd/golangci-lint run "$@"
