#!/usr/bin/env bash

this_script="$(basename "$0")"
current_dir="$(basename "$(pwd)")"

if [[ "$current_dir" != "aws-cli-scripts" ]] ; then
  echo "Run this script from the aws-cli-scripts repo"
fi

_cp() {
  (set -x ; cp $*)
}

for file_name in *.sh *.awk ; do
  [[ "$file_name" == "$this_script" ]] && continue
  _cp "$file_name" /usr/local/bin
done
