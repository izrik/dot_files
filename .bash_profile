#!/bin/bash

# this file is run by bash when starting a login shell

if [[ -f ~/.bashrc ]]; then
    . ~/.bashrc
fi

for f in $HOME/.bash_profile.d/*.{bash,sh}
do
    if [[ -f "$f" ]]; then
        source $f
    fi
done
