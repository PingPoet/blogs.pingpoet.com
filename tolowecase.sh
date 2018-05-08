#! /bin/bash
ROOT=docs
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
