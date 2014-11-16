Maid.rules do

	#
	# Screenshots
	#
	rule 'Screenshots' do
		dir('~/Desktop/Screen Shot *').each do |path|
			trash(path)
		end
	end

	#
	# Desktop SQL Files
	#
	rule 'Database Backups' do
		dir('~/Desktop/*.sql').each do |path|
			move(path, '~/Documents/DB Backups')
		end
	end

	#
	# Update all our Applications, brew, oh my zsh and such
	#
	rule 'Updating Brew' do
		`brew update`
	end
	rule 'Updating Cask Appliactions' do
		`brew cask update`
	end
	rule 'Updating Oh My Zsh' do #This is a kind of hacky way to do it
		`cd ~/.oh-my-zsh && g add . && git commit -m "local updates" && git pull --rebase origin master`
	end

	#
	# Downloads Folder Stuff
	#
	rule 'Trash incomplete downloads' do
		trash dir('~/Downloads/*.download').select { |p| 3.days.since modified_at p }
	end

	rule 'Trash zips and tarballs downloaded from GitHub' do
		dir('~/Downloads/*.{zip,tgz,gz,rar,tar}').each do |path|
			if downloaded_from(path).any? { |u| u.match %r{//([^\/]+\.)?github\.com\/} }
				trash path
			end
		end
	end

end
