# Dotfiles

A collection of some of my dotfiles and a simple script to install
them.

To install the dotfiles ensure the repo is located at `~/.myconfig/`
and the run:

```
$ ./install.sh
```

from within this directory. Running `install.sh` is set up to be
idempotent. Running it multiple times should have no effect. Running
it after the repository has been updated should update the dotfiles
without breaking things. Additionally, it should not choke if certain
functionality is not installed, but should print out a message saying
to install it.
