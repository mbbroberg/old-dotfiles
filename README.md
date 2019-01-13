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
A slightly-copmlicated set of dotfiles I've modified to fit me. Thanks and high fives are due to [bradp](http://github.com/bradp/dotfiles) for sharing!

## Flow 

On fresh install, running `misc/setup.sh` will set us up for success. From there, `rake` will manage the primary dotfile config going where they need to go, like `$HOME`.

## Submodules 

- [oh-my-zsh](), in `.oh-my-zsh`, for a wonderful terminal experience
- [Zsh autosuggestion](), in `zsh-custom/autosuggestions/`, for easy peasy typing
- [Spaceship-prompt](), in `zsh-custom/themes/`, for a beautiful terminal
- [.tmux](), in `.tmux`, for a sexy tmux setup 

# Recovery strategy 

* Start with old-dotfiles repo. Copy updates 1-by-1
* Document as I go in README to remind myself of what's going on


-[ ] Install autosuggestion submod
-[ ] Change spaship to submod!
