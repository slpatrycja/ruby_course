class Trip
	attr_reader :cost

	def initialize(vehicles)
	@vehicles = vehicles
	@cost = 0
	end

	def add_vehicle(vehicle)
		@vehicles.push(vehicle)
	end

	def remove_vehicle(vehicle)
		@vehicles.delete(vehicle)
	end

	def calculate_cost
		@cost = @vehicles.sum { |vehicle| vehicle.cost }
	end
end



class Vehicle
	attr_reader :name, :cost
	
	def initialize(name)
		@name = name
		@cost = 0
	end

	def go(distance)
		@cost += distance * @price_per_km
	end

	def ==(other)
		name == other.name
	end

end

class Car < Vehicle
	attr_reader :price_per_km

	def initialize(name, price_per_km)
		super(name)
		@price_per_km = price_per_km
	end

	def ==(other)
		name == other.name && price_per_km == other.price_per_km
	end

end

class Train < Vehicle

	def initialize(name)
		super
	end

	def go(distance)
		@cost += 3
	end
end

class Bike < Vehicle
	def initialize(name)
		super
		@price_per_km = 0
	end
end


car_1 = Car.new('Ford', 0.3)
train = Train.new('2')
bike = Bike.new('kolarski')
vehicles = [car_1, train, bike]
trip = Trip.new(vehicles)

vehicles[0].go(100)
vehicles[0].go(15)
vehicles[1].go(4)
vehicles[1].go(6)
vehicles[2].go(30)

trip.calculate_cost
puts "Trip cost: #{trip.cost}"
puts "*******************"

car_2 = Car.new('Fiat', 0.4)
trip.add_vehicle(car_2)
car_2.go(30)
trip.calculate_cost
puts "Trip cost: #{trip.cost}"
puts "*******************"

trip.remove_vehicle(car_1)
trip.remove_vehicle(train)
trip.remove_vehicle(bike)
trip.calculate_cost
puts "Trip cost: #{trip.cost}"
puts "*******************"