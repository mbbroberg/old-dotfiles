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
A slightly-complicated set of dotfiles I've modified to fit me. Thanks and high fives are due to [bradp](http://github.com/bradp/dotfiles) for sharing!

## Flow 

On fresh install, running `misc/setup-new-mac.sh` will get the basic MacOS config going. From there, I run [mac-dev-playbook](https://github.com/mbbroberg/mac-dev-playbook), which takes care of application and advanced preferences. 

Running the playbook with `ansible` triggers a `rake`, which will manage primary dotfile config going where they need to go, like `$HOME`.

## Submodules 

- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), in `.oh-my-zsh`, for a wonderful terminal experience
- [Zsh autosuggestion](https://github.com/zsh-users/zsh-autosuggestions), in `zsh-custom/autosuggestions/`, for easy peasy typing of commands
- [Zsh syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting), in `zsh-custom/plugins/`, for more color
- [Spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt), in `zsh-custom/themes/`, for a beautiful terminal
- [.tmux](https://github.com/robbyrussell/oh-my-zsh), in `.tmux`, for a sexy tmux setup

## Todo 

- Dig into [MacOS Maid](https://github.com/benjaminoakes/maid), which the original creator of these dotfiles recommended
- Simplify `misc/setup-new-mac.sh` to be open to new Linux environments as well
- Learn tmux 😅