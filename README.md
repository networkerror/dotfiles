# Base-OS-Setup
This is a standard load-out of my configs and setups -- an attempt to make my development environments repeatable regardless of what OS I'm working in.

Running the setup files for your OS of choice should install common packages and setup dotfiles/sources.  The setup files are idempotent.  You may run them as often as you like.

# Quick Start
__FIRST:__ Check this repo out to ~/dotfiles.

`git clone https://github.com/networkerror/dotfiles.git ~/dotfiles`

*Note: If you're in windows, see the sections on Vagrant and Cygwin.*

## Mac
* Install homebrew.
* Run `bash ~/dotfiles/install/mac_packages.brew.sh`

## Ubuntu
* Run `sudo /bin/bash ~/dotfiles/install/ubuntu_packages.sh`
* Run `bash ~/dotfiles/install/ubuntu_user_setup.sh`

## Windows
* Install the goodies listed in windows_packages_WIP.  These are handy.  I've included some configs for common utils in the configs/windows directory.
* Consider installing cygwin and/or vagrant (see below)

## Vagrant
Vagrant is very very portable.  It works on Windows (with a few caveats) as well as Mac and Linux.  It's easy to blow away and re-build your dev environment over and over again.

* Install Vagrant (google it)
* Install Virtual Box (google it)
 * Yes, you need to reboot after you install...
* If you have ssh keys (which you should) place them in a directory called `.ssh`.  This directory must be a sibling of `dotfiles`.  (If you're using this on a mac, it should just work.)
* Boot your vagrant box: `cd ~/dotfiles; vagrant up --provision`
* You can ssh to your vagrant box like this `vagrant ssh` (if you're on windows without cygwin, this is a little trickier)
* Your vagrant box is running on a private, virtual IP of 192.168.111.111
 * You may want to add that to your `/etc/host`

A note on windows.  You can't use symlinks or run `ch***` commands on files synced with your windows OS.  This can be an issue at times.  In particular, `npm install` can get hung up if symlinks don't work.

If you need to create a symlinkable node_modules directory, please run npm_mount.js in your project directory.  It will help you setup a magical bind mount that will make all (most) of your problems melt away.  `cd ~/code/my_js_project; npm_mount.js`

## Cygwin
I use cygwin for exactly one reason - it has a decent *nix-ish console with ssh support.  That's it.  I use Vagrant for all the heavy lifting.

* Install cygwin (google it)
* Run `bash ~/dotfiles/cygwin_setup.sh`

# Project Layout
Each directory has scripts or notes to serve a themed purpose.

## sources/*.source
`*.source` files live in the root directory and should be sourced by .bash_profile
(See the `source_this` file for a simple helper.)

## configs/
Config files (like `vimrc`) that are meant to be symlinked/copied to a common sense location.

## install/
Stuff in the install directory will do some initial system configuration.  These are setup scripts that may or may not be OS-specific.

## bin/
This should be added to your path.  Throw any utilities in here for easy use.


