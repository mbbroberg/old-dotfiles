require 'rake'
require 'fileutils'

task :default => 'install'

task :install do
	symlink_file('.gemrc')
	symlink_file('.gitconfig')
	symlink_file('.global_ignore')
	symlink_file('.hushlogin')
	symlink_file('.vimrc')
	symlink_file('.zshrc')
	symlink_file('.maid')
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
