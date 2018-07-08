class Animal
	attr_accessor :age, :name, :number_of_legs

	def initialize(age, name, number_of_legs)
		@age = age
		@name = name
		@number_of_legs = number_of_legs
	end

	def to_s
		"Name: #{name}, Age: #{age}, Legs: #{number_of_legs}"
	end

	def move
		puts 'Moving forward'
	end

	def eat
		puts 'Eating'
	end

	def drink 
		puts 'Drinking water'
	end

	def give_sound
	end
end


class Cat < Animal

	def initialize(age, name)
		super(age, name, 4)
	end

	def scratch
		puts "I'm a cat, I scratch"
	end

	def give_sound
		puts 'Miau!'
	end


end

class BlackCat < Cat

end

class Dog < Animal

	def initialize(age, name)
		super(age*7, name, 4)
	end

	def bring
		puts 'Bringing a stick'
	end

	def give_sound
		puts 'Woof!'
	end

end


animals = [BlackCat.new(12, 'Witek'), 
	Cat.new(15, 'Teodor'),
	Animal.new(10, 'Filip', 2),
	Dog.new(10, 'Bailey')
	]

animals.each { |animal| puts animal } 