YAVIN
=====

Yet another vimrc ide node


`this script assumes you have no .vimrc`


    git clone git://github.com/whatbirdisthat/vim-yavin.git ~/.vim
    cd .vim
    git submodule init
    git submodule update
    ln -s ~/.vim/yavin/vimrc ~/.vimrc

Yavin is about one thing: the TEXT . No fake metal borders,
no 'window', no 'menu', no 'toolbar', no 'death-star' -
just the actual TEXT.

Yavin defines some keys and behaviours in `yavin/vimrc` that are
geared towards use by those who don't like mice or bright lights.

Browse the `bundle` dir to see which scripts are collected by
Yavin.

You might not always have all of these scripts turned on (eg why run
two commenters?) but I like them all the same, and it costs nothing
to subscribe to their trunk (or someone's mirror) with Github.


So Yavin is a vim IDE, the focus is on responsiveness. And a nice
dark screen.

What Yavin needs:
=================

* Goto definition

        Being able to <leader>G jump to a function definition
        (workaround: use grep)
* Deep autocomplete popups

        Being able to tell vim where ZendFramework, Boost, pysvn etc are.
        (workaround: use grep)
* *doc Help Window

        Check for any *doc for the current function/class/namespace
        (guess what the workaround is)
* Refactoring

        ... see this is where we just command-tab over to netbeans

