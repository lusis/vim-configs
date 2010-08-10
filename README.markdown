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

### Bundles you can change
There are a few bundles you can change that I've placed there myself (i.e. not submodules):
	bundle/filetype-settings/plugin/
	bundle/personal-settings/plugin/
	bundle/colorschemes/colors/
	_colorschemes/

### filetype-settings
In this directory, you'll find a set of autocommands applied to given filetypes. These are done as autocommand groups.
Currently, filetype settings exist for Ruby and Python. I've customized the colorscheme for a given filetype here. If none is defined, the default is used.

A good example is the python filetype settings. When we're using a gui (macvim/gvim), we use a more rich colorscheme (railscast).
When we're on the console, it defaults to a version of railscast converted for 256 color consoles. This was done using the CSApprox plugin.

### personal-settings
This is where you can set things like keymaps, gui-specific flags and settings for some of the plugins (like NERDTree)

Managing colorschemes
---------------------
I've tried to move colorschemes around a bit so that you don't have to know if a bundle is a plugin vice a colorscheme in the bundle directory.
Colorscheme files actually live in:
	.vim/_colorschemes/<schemename>
From there, it's symlinked into:
	bundle/colorschemes/colors/
This allows you to disable colorschemes by simply removing the symlink. Unfortunately, I'll probably end up overwriting that if you do a fresh pull.
### CSApprox
I won't go into detail here about how to use CSApprox but I've provided console versions of the colorschemes I'm including.

Where to change some common settings
------------------------------------
*GUI font* - bundle/personal-settings/plugin/gui-settings.vim
*Default colorscheme* - vimrc
*Per-file colorscheme* - bundle/filetype-settings/plugin/filetype.vim
*Keymaps* - bundle/filetype-settings/plugin/keymaps.vim
*Adding a colorscheme*
	cd _colorschemes
	mkdir mycolorscheme
	<add colorscheme file>
	cd ~/.vim/bundle/colorschemes/colors/
	ln -s ../../../_colorschemes/schemename/schemefile.vim
Alternatively, you can simply create a colors directory in .vim and put the schemefile there.

On the plate
------------
I'm working on a script to do the following:
- Removing personal settings from my repo and allow you to configure the location yourself (i.e. outside of git control)
- Activate/deactivate colorschemes or add/remove colorschemes
- Activate and deactivate plugins

I'll probably do the symlink magic in the next commit and move the submodules around. Essentially the bundle directory will be empty and you symlink the plugins you want to use. Eventually that will be done by the script (read: Rakefile)

Another option is to simply fork the project into your own repo and work with it from there.

Submodules included
-------------------
[`bundle/cucumber`](http://github.com/tpope/vim-cucumber.git)
[`bundle/vividchalk`](http://github.com/tpope/vim-vividchalk.git)
[`bundle/vim-git`](http://github.com/tpope/vim-git.git)
[`bundle/vim-markdown`](http://github.com/tpope/vim-markdown.git)
[`bundle/vim-fugitive`](http://github.com/tpope/vim-fugitive.git)
[`bundle/snipmate`](http://github.com/msanders/snipmate.vim.git)
[`bundle/nerdtree`](http://github.com/scrooloose/nerdtree.git)
[`bundle/gist-vim`](http://github.com/mattn/gist-vim.git)
[`bundle/nerdcommenter`](http://github.com/scrooloose/nerdcommenter.git)
[`bundle/csapprox`](http://github.com/godlygeek/csapprox.git)
[`bundle/vim-templates`](http://github.com/hariton/simple-vim-templates.git)
[`bundle/secure-modelines`](http://github.com/ciaranm/securemodelines.git)
