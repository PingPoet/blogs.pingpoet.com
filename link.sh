#! /bin/sh
ROOT=$(pwd)
echo "root: $ROOT"
rm -rfdv "$ROOT/docs"
mkdir -v "$ROOT/docs"
cd "$ROOT/docs"
"$ROOT/lndir.sh" "../httrack/blogs.pingpoet.com"
cd $ROOT
