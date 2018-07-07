require 'digest'
	begin
	puts Digest::MD5.hexdigest File.read(gets.chomp)
	rescue Errno::ENOENT
	puts "Nie ma takiego pliku"
end