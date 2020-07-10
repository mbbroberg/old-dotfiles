#!/usr/bin/ruby

# From https://gist.github.com/ngty/91167

`cat ~/Development/dotfiles/shells/aliases | egrep '^alias' | sed 's/alias//'`.split("\n").each do |line|
  parts = line.strip.split(/=/)
  name, cmd = parts[0], parts[1].gsub(/('|")/,'')
  file = '/home/%s/.config/fish/functions/%s.fish' % [`whoami`.strip, name]
  content = [ 'function %s' % name, '        %s $argv;' % cmd, 'end' ].join("\n")
  File.open(file, 'w+'){|io| io.write(content) }
end
