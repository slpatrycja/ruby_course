require 'haar_joke'
require 'csv'

File.open('jokes.txt', 'w') do |file|
	10.times do 
		file.puts HaarJoke.create_joke
		file.puts "\n"
	end
end
