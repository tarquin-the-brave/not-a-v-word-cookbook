#!/usr/bin/env sh
files=$(awk -F'[()]' '{print $2}' src/SUMMARY.md | sed 's/\./src/' | grep -v contributions | grep -v 'your-recipes' | grep -v 'do-this-yourself' | grep -v copyright)
pandoc -o cookbook.odt $files
