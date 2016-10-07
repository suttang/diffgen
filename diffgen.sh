#!/bin/sh -u

read -p "FROM: " FROM
git archive --format=zip --prefix=diff_archive/ HEAD `git diff --name-only HEAD $FROM` -o diff_archive.zip

# See
# http://qiita.com/hironaito/items/9b5135698ea1a497a3c0
