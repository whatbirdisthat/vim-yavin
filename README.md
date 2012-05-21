YAVIN
=====

`Yet another vimrc ide node`

    git clone git://github.com/whatbirdisthat/vim-yavin.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd .vim
    git submodule init
    git submodule update

Yavin is about one thing: the TEXT . No fake metal borders,
no 'window', no 'menu', no 'toolbar', no 'death-star' -
just the actual TEXT.

Submodules
==========

Collected here are some highly useful tools for vim.

* easygrep
* gundo
* nerdcommenter
* nertree
* quickfixsigns
* syntastic
* tabular
* vcscommand
* vim-abolish
* vim-afterimage
* vim-commentary
* vim-endwise
* vim-fugitive
* vim-pathogen
* vim-repeat
* vim-surround
* vim-unimpaired
* vim-vividchalk


I don't always have all of these scripts turned on (eg why run
two commenters?) but I like them all the same, and it costs nothing
to subscribe to their trunk (or someone's mirror) with Github.


So Yavin is a vim ide, the focus is on responsiveness. And a nice
dark screen.

What Yavin needs:
=================

1 Goto definition
Being able to \<leader\>G jump to a function definition
(workaround: use grep)
2 Deep autocomplete popups
Being able to tell vim where ZendFramework, Boost, pysvn etc
are.
(workaround: use grep)
3 *doc Help Window
Check for any *doc for the current function/class/namespace
(guess what the workaround is)
4 Refactoring
... see this is where we just command-tab over to netbeans

