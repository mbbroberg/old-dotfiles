## Dotfiles

Dotfiles are a wonderful concept for managing customization across systems. Read more: 

- [Move your dotfiles to version control](https://opensource.com/article/19/3/move-your-dotfiles-version-control)
- [GitHub ❤ ~/](http://dotfiles.github.io/)

## Notes to future self

* Any file I want to use is manually copied to its location. The next step is writing a wrapper to move files around as needed or to adopt someone elses (like [this one](https://github.com/rkalis/dotfiles/blob/master/bootstrap.sh) or [this one](https://github.com/paulirish/dotfiles/blob/master/symlink-setup.sh))

* `bin` is filled with handy commands. Make sure it ends up $PATH.
* `editors` back up.. you guessed it. `settings.json` is for VS Code, which needs to be plopped [here](https://vscode.readthedocs.io/en/latest/getstarted/settings/#settings-file-locations).
* `git` is global config. `.ssh.config` is a drop in for `~/.ssh/config` in order to manage multiple ssh profiles for GitHub and GitLab.
* `mac` is Mac specific config, including iTerm2, Homebrew, and Alfred 3.
* `shells` includes beautiful fish config and messy bash/zsh bits. Don't forget to use Fisher and run [your fishfiles](https://github.com/mbbroberg/fishfiles).
* `terminals` are cross-platform customization for terminals. Only [hyperterm](https://hyper.is/) right now, which I want to love.

## Thanks 

All config is built standing on the shoulders of giants. Thanks to: 

- iTerm2 is pretty thanks to [snazzy](https://github.com/sindresorhus/iterm2-snazzy).