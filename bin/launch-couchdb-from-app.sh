#/bin/sh -ex
# thx @surryhill https://twitter.com/surryhill/status/345283578835390464
BASE=`mdfind "kMDItemCFBundleIdentifier == org.apache.couchdb" | head -1`
cd "$BASE"/Contents/Resources/couchdbx-core
if [ $1 ]; then
  echo `pwd`
else
  ./bin/couchdb $@
fi
