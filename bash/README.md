Setting Up Profiles
===================

Setting up profiles for bash is tricky. See [ShreevatsaR's "Bash Startup File Loading Order"](https://shreevatsa.wordpress.com/2008/03/30/zshbash-startup-files-loading-order-bashrc-zshrc-etc/) for an explanation of all the pieces.

The strategy here is as follows:

- All major configuration occurs in `~/.bashrc`, and `~/.bash_profile`
  sources this file.
- `~/.bashrc` sources a number of files in this configuration
  directory to add additional configuration
- `~/.bashrc` also checks if a `~/.environment` file exists, and
  sources it if it does, this file is not kept under version control,
  and can be used for non-versioned config

## Configuration Files

Each of these files reside in this directory, and are sourced by the
bashrc file.

- config.sh
- aliases.sh
- functions.sh
