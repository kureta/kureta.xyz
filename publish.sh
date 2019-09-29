#!/bin/sh
git pull origin master
git submodule update --init --recursive
git submodule foreach git checkout master
git submodule foreach git pull origin master

rm -rf /home/kureta/srv/kureta.xyz/*
hugo

