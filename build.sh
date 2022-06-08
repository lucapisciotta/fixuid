#!/usr/bin/env sh
cd "$(dirname "$0")" || return

rm -f ./fixuid
GOOS=linux CGO_ENABLED=0 go build