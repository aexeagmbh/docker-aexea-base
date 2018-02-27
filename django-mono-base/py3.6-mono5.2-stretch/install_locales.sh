#!/bin/sh

set -e

apt-get install -y locales
for l in `python /root/get_locales.py`; do
    localedef -i ${l} -f UTF-8 ${l}.UTF-8
done
locale -a
