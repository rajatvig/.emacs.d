.emacs.d for the Emacs

Mostly used under Mac OS X and Linux.

To use

`git submodule init`

`git submodule update`

Submit/Fork as needed

To run Emacs Daemon on OS X, write in .zshrc

`alias ed=/Applications/Emacs.app/Contents/MacOS/Emacs --daemon`

`e='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n -a= -c'`

Run ed in a terminal and then write e <file> anywhere to profit