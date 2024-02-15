#!/bin/bash

# this file is run by bash when starting an interactive (and non-login) shell, e.g. in a terminal app

if [[ -f /etc/bashrc ]]; then
    . /etc/bashrc
fi

if [[ -f /etc/bashrc.user ]]; then
    . /etc/bashrc.user
fi

for f in $HOME/.bashrc.d/*
do
    if [[ -f "$f" ]]; then
        source $f
    fi
done

if [[ -f ~/.bash_aliases ]]; then
    . ~/.bash_aliases
fi

for f in /usr/local/etc/bash_completion.d/* 
do
    if [[ -f "$f" ]]; then
        source $f
    fi
done





