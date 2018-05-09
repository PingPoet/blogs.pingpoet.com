#! /bin/bash
ROOT=docs/Scripts
find "$ROOT" -type l -regex .*[A-Z].* | while read f
do
   lc=$(echo ${f} | tr A-Z a-z)
   git mv -v $f ${lc}_
done

ROOT=$(echo "$ROOT" | tr A-Z a-z)
find "$ROOT" -type l -regex .*[A-Z].* | while read f
do
   lc=$(echo ${f} | tr A-Z a-z)
   git mv -v ${lc} ${lc%?}
done

# NOTE: this left some files over with underscores and I used following to fix that:
# find -E . -regex .*_ | while read f; do mv $f ${f%?}; done