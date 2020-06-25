from homely.files import mkdir, symlink

mkdir('~/Development')

symlink('shells/config.fish', '~/.config/fish/config.fish')
