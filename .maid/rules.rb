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

end
