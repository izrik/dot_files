#!/bin/bash

# This script sets up aliases. It should be called by .bashrc

for f in $HOME/.bash_aliases.d/*.{bash,sh}
do
    if [[ -f "$f" ]]; then
        source $f
    fi
done

