YAVIN
=====

Yet another vimrc ide node

    git clone git@github.com:whatbirdisthat/vim-yavin.git ~/.vim
    ~/.vim/bundle/yavin/install.sh

`this script assumes you have no .vimrc`

Yavin is about one thing: the TEXT . No fake metal borders,
no 'window', no 'menu', no 'toolbar', no 'death-star' -
just the actual TEXT.

Yavin defines some keys and behaviours in `bundle/yavin/vimrc` that are
geared towards use by those who don't like mice or bright lights.

Browse the [bundle](https://github.com/whatbirdisthat/vim-yavin/tree/master/bundle) dir to see which scripts are collected by
Yavin.

You might not always have all of these scripts enabled (eg why run
two commenters?) but I like them all the same, and it costs nothing
to subscribe to their trunk (or someone's mirror) with Github.


So Yavin is a vim IDE, the focus is on responsiveness. And a nice
dark screen.

What Yavin needs:
=================

* Jump to definition/declaration/inheritance/usage

        To <leader>J jump to function definition,
        structure declaration, inheritance traversal, usages
        (workaround: use grep)
* Deep autocomplete popups

        Being able to tell vim where ZendFramework, Boost, pysvn etc are.
        (workaround: use grep)
* *doc Help Window

        Check for any *doc for the current function/class/namespace
        (guess what the workaround is)
* Refactoring

        ... see this is where we just command-tab over to netbeans

Gotchas:
========

* Sometimes the .vimrc file is not stored as utf-8. When running vim
the error `E474 invalid argument: listchars= ...` appears on startup.

This is fixed by opening the .vimrc, and saving it as a BOM UTF-8 file:

        :set fileencoding=utf-8
        
        :set bomb
        
        :w
