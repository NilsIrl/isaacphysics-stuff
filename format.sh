#!/usr/bin/env sh

cat default_macros.tex <(jq -r '.. | .answer? // empty | "\(.value)\(if .units then "\n$\(.units)$" else "" end)\n"') | pandoc --to=plain

