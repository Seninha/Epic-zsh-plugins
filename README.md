Epic-zsh-plugins
================================================================================

Epic-zsh-plugins are a set of epic and awesome short, simple, clean, modular,
transparent and VIM-ORIENTED zsh plugins that improve the basic behavior of the
Zsh in several ways.


Instalation
-----------


### Using [Antigen][]:
[Antigen]: https://github.com/zsh-users/antigen

To install all plugins, add the following line to your .zshrc:

``` zsh
	antigen bundle Seninha/epic-zsh-plugins
```

To install a single plugin (like **vimBindkeys**), add the following line to
your .zshrc:

``` zsh
	antigen bundle Seninha/epic-zsh-plugins/vimBindkeys
```


### Manually Install:

You must clone the git repository and source the files manually.


Plugin Index
================================================================================

aliases
-------

Basic aliases to ls, file management aliases, suffix aliases and MUCH MORE. See:

* If you type just `something.c` in your terminal, the default editor
  defined by the variable `$EDITOR` will open, and will edit the file
  `something.c` (if doesn't exist the variable `$EDITOR`, it opens vim)

* If you try to execute a .exe file, it opens this file with wine

* If you type just `www.google.com` in your terminal, the default browser
  defined by the fariable `$BROWSER` will open in the google page (if
  doesn't exist the variable `$BROWSER`, it opens firefox)

* `ls` is colorful, shows directories first, uses quoting style, is human
  redable, and uses filetype indicator

* `ll` is a alias to `ls -l` (listing mode)

* `lr` is a alias to `ls -R` (recursive mode)

* `la` is a alias to `ls -a` (show all files)

* `mv`, `rm` and `cp` commands are interactive and can works with directories


completion
----------

Complete commands, arguments, files, manpages and more.

Lists possible completions in a menu and you can scroll through the options
using movement keys like `Arrow Keys`, `Vim hjkl`, `PG Up`, `PG Down`, `Home`
and `End`


envvars
-------

Some basic environment variables (just path, fpath, `$EDITOR` and a few more)


modules
-------

Load some zsh modules (for now just `complist` and `mathfunc`)


options
-------

Set several zsh options:

- Automatically `cd` when just a path is given in the terminal;

- If `cd` argument isn't a valid directory, consider it as a variable;

- Append history rather than replace it;


vimBindkeys
-----------

Use Bash-like and Emacs-like bindkeys for movement and modify the text while in insertion
mode. But uses several vim-like bindkeys while in command mode. And add some feats:

- `Up` and `Down` searchs for history entries that starts with the beggining of current line;

- `Home`, `End`, `Backspace` and `Delete` work as expected;

- `PG Up` and `PG Down` go to the beginning and to the end of history, respectively.


Plugins philosophy
================================================================================

The plugins were written according to the *Unix Philosophy*. Some writing code rules
are the following (others rules can be read [Here][Unix]):

- **Simplicity:** Each plugin do one thing and do it well. E.g. one plugin that just
  add alias, other that just set bindkeys, and so on.

- **Clarity:** The plugin's code is readable and comprehensible for whoever works on
  the code in the future.

- **Transparency:** Each plugin is designed for visibility and discoverability by
  writing in a way that the code can lucidly be seen and understood by anyone.

