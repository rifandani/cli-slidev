#!/usr/bin/env bash

# ONLY supports short flag/option
# getopts - parse utility options. Learn more: https://man7.org/linux/man-pages/man1/getopts.1p.html
while getopts 'abc:z' opt; do
  case "$opt" in
    a)
      echo "Processing option 'a'"
      ;;

    b)
      echo "Processing option 'b'"
      ;;

    c)
      echo "Processing option 'c' with $OPTARG argument"
      ;;

    ?)
      echo "Usage: $(basename "$0") [-a] [-b] [-c arg]"
      exit 1
      ;;
  esac
done

# shift "$(($OPTIND -1))"