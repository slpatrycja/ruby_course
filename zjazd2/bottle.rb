class Bottle
	attr_reader :water
	
	def initialize
		fill
	end

	def drink
		@water -= 10 unless @water.zero?
	end


	private

	def fill
		@water = 100
	end

	
end

bottle = Bottle.new 
bottle.drink
puts bottle.water
