#!/bin/bash
# In order to interpret the file as an executable, you'll also have to add the shebang (#!) at the top of the script.

do_share() {
  echo "sharing..."
  echo "sharing complete"
}

do_else() {
  echo "Supported flags: (-s|--share)"
}

# switch case to catch first arguments with $1
case "$1" in
  -s|--share)
    # execute if arguments in $1 to equal "-s" or "--share"
    do_share
    ;;
  *)
    # else
    do_else
    ;;
esac

echo  ""
echo  "index 0: $0"
echo  "index 1: $1"
echo  "index 2: $2"