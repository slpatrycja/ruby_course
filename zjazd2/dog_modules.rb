module Collar
	def pull
		puts "Pulling #{self}"
	end
end

module Chip
	def get_chip_id
		@chip_id ||= rand(100000000)  #przypisuje wartosc jesli zmienna jest pusta, jesli nie jest to wypisuje jej wartosc
	end
end

class Dog
	include Collar
	include Chip
end



dog = Dog.new
puts dog.get_chip_id
puts dog.get_chip_id
