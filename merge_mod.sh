#!/bin/sh
module_name=$1
shift
awk '/\t/' $@ | sort -u | sed -e '1i\
module '"$module_name"'\
\
require (\
' -e '$a\
)'
