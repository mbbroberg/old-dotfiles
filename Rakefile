require 'rake'
require 'fileutils'

task :default => 'setup'

#
# Creates the symlinks for what we need to create
#
task :setup do
	symlink_file('.gemrc')
	symlink_file('.gitconfig')
	symlink_file('.global_ignore')
	symlink_file('.hushlogin')
	symlink_file('.vimrc')
	symlink_file('.zshrc')
	symlink_file('.maid')
end

# Run as rake setup_file[file_name]
# Zsh will be kind of weird with the brackets, so do this:
# 	rake 'setup_file[.my_dot_file]'
# unless you add 'unsetopt nomatch' to .zshrc, then you're good to go without the quotes
task :setup_file, [:file ] do |t, file|
	symlink_file( "#{file[:file]}")
end

# symlink multiple files at once
# rake setup_files['.maid .vimrc .hushlogin']
task :setup_files, [:file ] do |t, file|
	"#{file[:file]}".split.each do |single_file|
	  symlink_file( single_file )
	end
end

def symlink_file(file, method = :symlink)
	source = "#{ENV["PWD"]}/#{file}"
	target = "#{ENV["HOME"]}/#{file}"

	puts "====================== #{file} =============================="
	puts "Source: #{source}"
	puts "Target: #{target}"

	if File.exists?(target) || File.symlink?(target)
	  puts "[Overwriting] #{target}..."
	end

	if method == :symlink
	  `ln -nfs "#{source}" "#{target}" `
	else
	  `cp -f "#{source}" "#{target}"`
	end

	puts "=========================================================="
	puts
end


