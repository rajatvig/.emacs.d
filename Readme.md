My .emacs.d for Emacs 24.x

I mostly used it with Mac OS X and Linux. Works mostly.
I use Droid Sans Mono with size set to 9.

To use

`git clone https://github.com/rajatvig/.emacs.d.git ~/.emacs.d`

`cd ~/.emacs.d`

`git submodule init`

`git submodule update`

`cd external\ensime`

`sbt stage`

To run Emacs Daemon on OS X, write in .zshrc

`alias ed=/Applications/Emacs.app/Contents/MacOS/Emacs --daemon`

`alias e='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n -a= -c'`

Run `ed` in a terminal and then write `e <file>` anywhere to profit
