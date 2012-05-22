#!/bin/sh
CPWD=$PWD
cd ~/.vim
git pull
git submodule init
git submodule update
cd $CPWD

