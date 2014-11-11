# What's What
This is a standard load-out of my configs and setups -- an attempt to make my development environments repeatable regardless of what OS I'm working in.

## sources/*.source
`*.source` files live in the root directory and should be sourced by .bash_profile
(See the `source_this` file for a simple helper.)

## configs/
Config files (like `vimrc`) that are meant to be symlinked/copied to a common sense location.

## install/
Stuff in the install directory will do some initial system configuration.  These are setup scripts that may or may not be OS-specific.

## bin/
This should be added to your path.  Throw any utilities in here for easy use.
