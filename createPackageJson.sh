#!/bin/bash
# PACKAGE=typeB
echo $1
VER=`npm info @shokorep/$PACKAGE version` || VER=1.0.0
echo set $PACKAGE version to $VER
# cat docs/template.json | ver=123 envsubst 
# cat docs/template.json | ver=123 envsubst 
# echo $ver

# cat sample2.json | ver=$ver envsubst > sample3.json
# cat sample2.json | ver=$ver envsubst > sample3.json

# ver=123
sed -e "s/\$ver/$VER/g" -e "s/\$package/$PACKAGE/g" docs/template.json > docs/$PACKAGE/package.json