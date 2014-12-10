```
      ██            ██     ████ ██  ██
     ░██           ░██    ░██░ ░░  ░██
     ░██  ██████  ██████ ██████ ██ ░██  █████   ██████
  ██████ ██░░░░██░░░██░ ░░░██░ ░██ ░██ ██░░░██ ██░░░░
 ██░░░██░██   ░██  ░██    ░██  ░██ ░██░███████░░█████
░██  ░██░██   ░██  ░██    ░██  ░██ ░██░██░░░░  ░░░░░██
░░██████░░██████   ░░██   ░██  ░██ ███░░██████ ██████
 ░░░░░░  ░░░░░░     ░░    ░░   ░░ ░░░  ░░░░░░ ░░░░░░

```
![](http://gifsb.in/codes/floppy-discs.gif)

## Quick installation:


```
$ cd ~
$ git clone --recursive git@github.com:bradp/dotfiles.git
$ rake
```

## How to use

This repo contains a Rakefile that does some magic things.

``` $ rake ``` - Will overwrite your existing dotfiles and symlink ours to your home directory.

``` $ rake setup_file[ .filename .file2 ] ``` - Symlink new files that you've added to the dotfiles/ directory.



## What it includes

* **`bin/`** Miscellaneous scripts. This is also added to your path. Contains:
 	* `$` for when you accidently copy a command from the internet.
 	* `colors-sample` Test your terminal colors. From [here](https://github.com/xero/dotfiles/blob/master/fun/code/fun/colorscheme).
 	* `git-diff` Wrapper for icdiff for git diffs.
 	* `icdiff` Side by side diffs. From [here](http://www.jefftk.com/icdiff).
 	* `replace` - Find and replace by a given list of files. `replace foo bar **/*.txt` From [here](https://github.
 	com/thoughtbot/dotfiles/blob/master/bin/replace).
* **`.maid/`**
 	My [Maid](https://github.com/benjaminoakes/maid) rules for cleanup of Desktop, Downloads, and automatic Brew and Oh My Zsh upgrades.
* **`misc/`** Miscellaneous scripts, that you might not run all the time. Contains:
 	* `bootstrap.sh` to setup dotfiles in one curl | sh command.
 	* `setup-new-mac.sh` to setup a new mac how I like it.
* **`.oh-my-zsh/`** Submodule checkout of [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh).
* **`.vim/`** My Vim plugins.
* **`zsh-custom/`** My custom [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) theme and Oh My Zsh plugins. Contains:
 	* `plugins/zsh-syntax-highlighting` Syntax highlighting from [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting).
 	* `plugins/parbs-sites` Helper zsh function to jump to a dir in the ~/Sites folder. Used as `site dir_name` (with autocomplete and everything).
 	* `themes/brad-muse` Custom theme based off Muse.
* **`.aliases`** Aliases. Gets sourced from inside the dotfiles folder.
* **`.exports`** Environment exports.
* **`.gemrc`** Speeds up gem installation.
* **`.gitconfig`** Make git awesome.
* **`.global_ignore`** Our global git ignore.
* **`.hushlogin`** Stop the login message when logging into remote servers.
* **`.secret`** *Not included*, but gets sourced if it exists.
* **`.vimrc`** Vim settings.
* **`.zshrc`** The magic that makes Zsh behave amazingly.
