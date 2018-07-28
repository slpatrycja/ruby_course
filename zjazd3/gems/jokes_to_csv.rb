require 'haar_joke'
require 'csv'


CSV.open('jokes.csv', 'wb', col_sep: ";") do |csv| 
	csv << ["content", "length"] 
	10.times do 
		joke = HaarJoke.create_joke
		csv << [joke, joke.split.size]
	end
end
