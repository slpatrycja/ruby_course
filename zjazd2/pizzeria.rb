class Pizza
	attr_reader :name, :price, :size
	def initialize(name, price, size)
		@name = name
		@price = price
		@size = size
	end

	def to_s
		"name: #{@name}, price: #{@price}, size: #{@size}"
	end
		
	def ==(other)
		name == other.name && price == other.price && size == other.size
	end

end

class User
	attr_accessor :balance
	def initialize(balance)
		@balance = balance
	end
end

class Pizzeria
	attr_reader :pizzas, :balance

	def initialize(pizza_names)
		@balance = 0
		@pizzas = []
		pizza_names.each do |pizza| 
			add_pizza(pizza)	 
		end
	end

	def make_order(user, pizzas)

		pizzas.each do |pizza|
			if @pizzas.include?(pizza) && user.balance >= pizza.price
				@balance += pizza.price
				user.balance -= pizza.price
				puts "Zamowiona pizza: #{pizza}"
			elsif user.balance < pizza.price
				puts "Nie stać Cię na pizzę: #{pizza}"
			else
				puts "Nie mamy pizzy: #{pizza}"
			end
		end
		
	end

	def add_pizza(pizza_name)
		@pizzas.push(Pizza.new(pizza_name, 20, 32), Pizza.new(pizza_name, 30, 42), Pizza.new(pizza_name, 40, 52))
	end

	# def remove_pizza(pizza_name)
	# 	pizzas_to_be_removed = []
	# 	@pizzas.each { |pizza| pizzas_to_be_removed.push(pizza) if pizza.name == pizza_name }
	# 	@pizzas -= pizzas_to_be_removed
	# end

	# def remove_pizza(pizza_name)
	# 	@pizzas = @pizzas.select { |pizza| pizza if pizza.name != pizza_name }
	# end

	# def remove_pizza(pizza_name)
	# 	@pizzas.each_with_index { |pizza, index| @pizzas[index] = nil if pizza.name == pizza_name }.compact!
	# end

	def remove_pizza(pizza_name)
		@pizzas.delete_if{ |pizza| pizza.name == pizza_name }
	end

end

pizza_names = ["Margarita", "Capricciosa", "Parma", "Kebab"]
pizzeria = Pizzeria.new(pizza_names)
puts pizzeria.pizzas
user = User.new(100)
user_pizzas = [
	Pizza.new('Parma', 20, 32),
	Pizza.new('Parma', 30, 42),
	Pizza.new('Parma', 20, 32),
	Pizza.new('Parma', 30, 42),
	Pizza.new('Parma', 20, 32),
	Pizza.new('Parma', 30, 42)
]

pizzeria.make_order(user, user_pizzas)
puts "User balance: #{user.balance}"
puts "Pizzeria balance: #{pizzeria.balance}"