#!/bin/sh

for file in ".emacs.d" ".tmux.conf"
do
    src="$(pwd)/${file}"
    dest="${HOME}/${file}"
    if [ ! -e ${dest} ]; then
        ln -s ${src} ${dest}
    fi
done
