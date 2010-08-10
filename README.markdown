vim-configs
===========

A collection of vim plugins bundled up all nice and pretty.

Basic Information
------------
This setup makes extensive use of the ['pathogen`](http://github.com/tpope/vim-pathogen) plugin from Tim Pope.
Additionally, it tries to use git submodules where appropriate so you always have the latest "vendor" plugin.

First time usage
----------------
If you have an existing .vim directory, you'll probably want to move it out of the way for now. Also backup your .vimrc
Checkout the repo in your home directory like so:
	git clone https://lusis@github.com/lusis/vim-configs.git .vim
	ln -s .vim/vimrc .vim
	cd .vim
	git submodule init
	git submodule update
This will clone the repo, setup a symlink to the vimrc inside and pull down all the submodules being used.

Customization
-------------
There's not really much you can customize off the bat. I'm working on a script to do some of that heavy lifting.
You'll probably want to change the default colorscheme. It's currently set for vividchalk (via tpope submodule).
Basically, don't bother changing anything in vimrc (especially the pathogen setup) unless you know what you're doing.
You can't really screw up the colorscheme change.
