#! /bin/bash
ROOT=docs/PhilBlog
find "$ROOT" -type l | while read f
do
   lc=$(echo ${f} | tr A-Z a-z)
   echo "$f -> ${lc}_"
   git mv $f ${lc}_
done

ROOT=$(echo "$ROOT" | tr A-Z a-z)
find "$ROOT" -type l | while read f
do
   lc=$(echo ${f} | tr A-Z a-z)
   echo "${lc} -> ${lc%?}"
   git mv ${lc} ${lc%?}
done
