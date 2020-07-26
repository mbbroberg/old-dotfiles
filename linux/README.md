Notes to self: 

- To generate `gnome-backup` run `dconf dump / > gnome-backup`
- To reload, `dconf load / < gnome-backup`
- To generate `Brewfile` run `brew bundle dump` 
- To reload, `brew bundle --file=` 
- Autokey config goes to `~/.config/autokey/`


TODO: 

Guake as a terminal is pretty neat. Consider adding these steps to back it up: 

```bash
backup_guake () {
    dconf dump /apps/guake/ > ${HOME}/Dropbox/backup_of_my_guake_settings
}

restore_guake () {
    dconf reset -f /apps/guake/
    dconf load /apps/guake/ < ${HOME}/Dropbox/backup_of_my_guake_settings
}
```
