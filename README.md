# dotvim

my vim config

*using vim8 packadd*<br>
*:help packadd to know more about*

## Configure

```
./configure.sh
````

This script will git clone plugins there are in the `plugins.conf` file on vendor dir `pack/vendor/opt`

Then need to make a symlink on ~/.vim/pack

```
cd ~/.vim
ln -s <<this project path>>/pack pack
```

## Config files

Files on `pack/local/start/config`

 - **autoload/init.vim**: load the following files:

 - **plugin/plugins.vim**: plugins and plugins config load
 - **plugin/config.vim**: base vim configs
 - **plugin/tmux.vim**: tmux compatibility
 - **plugin/key.vim**: key maps
 - **plugin/functions.vim**: utils functions
 - **plugin/compact.vim**: compatibility xterm and others
 - **plugin/colors.vim**: theme config and colors fixes

## Version

Tested on mac os x ventura builtin vim 9 probably works in vim 8.

## License

ISC License
