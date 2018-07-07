class Car
end

class Cookie 
end

class CoffeeMachine

	def grind_grains
		puts 'Grinding grains'
	end
	def make_coffee
		grind_grains
		puts "Making coffee"
		add_milk
	end

	def add_milk
		puts "Adding milk"
	end
end

# ekspres = CoffeeMachine.new
# ekspres.make_coffee


class Cat
	def bring(item)
		puts "Nie przynoszę #{item}"
	end
	def meow
		puts "Miau!"
	end
end

class Dog
	def bring(item)
		if item == "stick"
			puts "Przynoszę #{item}"
		else
			bark
		end
	end
	def bark
		puts "Woof!"
	end
end

cat = Cat.new
cat.bring("patyk")

dog = Dog.new
dog.bring("stick")