#!/bin/bash

read -p "Clean ALL cache. Are you sure? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm -fr _files/cache
fi

