# product class
class Product
	attr_accessor :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end

	def to_s
		"Name: #{@name}, Price: #{@price}"
	end
end
