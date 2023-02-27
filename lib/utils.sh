#!/usr/bin/env bash

function sort_versions() {
  sed 'h; s/[+-]/./g; s/.p\([[:digit:]]\)/.z\1/; s/$/.z/; G; s/\n/ /' |
    LC_ALL=C sort -t. -k 1,1 -k 2,2n -k 3,3n -k 4,4n -k 5,5n | awk '{print $2}'
}

function is_greater() {
  [[ "$(printf '%s\n' "$1" "$2" | sort_versions | head -n1)" == "$2" ]]
}
# vim: ai ts=2 sw=2 et sts=2 ft=sh
