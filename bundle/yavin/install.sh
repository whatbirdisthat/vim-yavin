
#!/bin/sh
CPWD=$PWD
cd ~/.vim
git submodule init
git submodule update
ln -s ~/.vim/bundle/yavin/vimrc ~/.vimrc
cd $CPWD

