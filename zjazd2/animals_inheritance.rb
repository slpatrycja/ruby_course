class Animal
	attr_accessor :age, :name, :number_of_legs

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

	def scratch
		puts "I'm a cat, I scratch"
	end

	def give_sound
		puts 'Miau!'
	end

	def to_s
		super + "\nI'm a cat"
	end
end

class BlackCat < Cat

	def to_s
		super + "\nI'm black"
	end
end

class Dog < Animal

	def bring
		puts 'Bringing a stick'
	end

	def give_sound
		puts 'Woof!'
	end

end


animals = [Dog.new, Dog.new, Cat.new, Dog.new]

animals.each { |animal| animal.give_sound }

cat = BlackCat.new
cat.age = 12
cat.name = 'Witek'
cat.number_of_legs = 4
puts cat