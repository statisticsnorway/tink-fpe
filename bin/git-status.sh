#!/usr/bin/env bash

while read -r repo
do
    if [ -d ${repo} ];
    then
    	git -C ${repo} status --short
    fi

done < repos.txt
