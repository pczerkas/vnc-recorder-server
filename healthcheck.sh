#!/bin/sh

#shellcheck disable=SC2009
(ps | grep -E "5:.. /usr/local/bin/ffmpe[g]") && exit 1

netstat -an | grep 25192 >/dev/null
#shellcheck disable=SC2181
if [ 0 != $? ]; then
    exit 1
fi
