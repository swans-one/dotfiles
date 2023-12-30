##
## Symlinks
##
ln -sfn ~/.myconfig/.tmux.conf ~/.tmux.conf
ln -sfn ~/.myconfig/.ghci ~/.ghci


##
## Bash Install
##
./bash/install.sh

##
## Local Binaries
##
mkdir -p ~/.local/bin
ln -sfn ~/.myconfig/bin/local-nginx ~/.local/bin/local-nginx
