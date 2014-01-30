Custom Emacs 24 configuration.

Mostly used under with Mac OS X and Linux. Use Consolas as the default Font.

To use

```
git clone https://github.com/rajatvig/.emacs.d.git ~/.emacs.d
cd ~/.emacs.d
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
cd external\ensime
sbt stage
cd ../..
cd external\auto-complete
make byte-compile
```

To run Emacs Daemon on OS X, write in .zshrc

```
alias e='emacsclient -n -a= -c'
```

`e <file>` anywhere to profit
