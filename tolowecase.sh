#! /bin/bash
ROOT=docs/Scripts
find "$ROOT" -type l | while read f
do
   lc=$(echo ${f} | tr A-Z a-z)
   git mv -v $f ${lc}_
done

ROOT=$(echo "$ROOT" | tr A-Z a-z)
find "$ROOT" -type l | while read f
do
   lc=$(echo ${f} | tr A-Z a-z)
   git mv -v ${lc} ${lc%?}
done
