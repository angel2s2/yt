#!/bin/bash

THIS_SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"                          # Откуда запущен скрипт
MVERSION=0
#VERSION="${MVERSION}.$(date +%Y.%m.%d)"

sed -i 's/^\(YA_API_KEY="\).*"$/\1"/g'                                 "${THIS_SCRIPT_DIR}/yt"

git diff --color
read -p 'Press Enter to continue...'

if [ "$(git tag -l v${MVERSION})" = "v${MVERSION}" ] ; then
  if [ $# -gt 0 ] ; then
    git add . && git commit --message="$*" && git push
  else
    git add . && git commit && git push
  fi
else
  if [ $# -gt 0 ] ; then
    git add . && git tag "v${MVERSION}" && git commit --message="$*" && git push
  else
    git add . && git tag "v${MVERSION}" && git commit && git push
  fi
fi

