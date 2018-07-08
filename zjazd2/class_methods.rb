class CoffeeMachine
	@@value = 3



	def self.company_name
		"Samsung"
	end

	def self.show
		puts self
		puts @@value
	end

	def show_value
		puts @@value
	end

	
end

# puts CoffeeMachine.new.show_value

class Car

	@@count = 0

	def self.number_of_cars
		@@count
	end

	def initialize(brand, model, color)
		@brand = brand.capitalize
		@model  = model.capitalize
		@color = color.capitalize
		@@count += 1
	end  

	def to_s
		"#{@color} #{@brand} #{@model}"
	end
end

car = Car.new("ford", "mondeo", "blue")
Car.new("fiat", "mondeo", "blue")
Car.new("opel", "mondeo", "blue")
Car.new("fiat","panda","red")

puts Car.number_of_cars

