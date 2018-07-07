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
	def initialize(name, breed)
		puts "Miau, my name is #{name}, I'm #{breed}"
	end
	def bring(item)
		puts "Nie przynoszę #{item}"
	end
	def meow
		puts "Miau!"
	end
end

class Dog
	def initialize(name, breed)
		puts "Woof, my name is #{name}, I'm #{breed}"
	end
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

# cat = Cat.new('Teodor','scottish')
# cat.bring("patyk")

# dog = Dog.new('Bailey', 'golden retriever')
# dog.bring("stick")

class Book
	def initialize(title, nb_of_pages)
		@title = title
		@nb_of_pages = nb_of_pages
	end
	def show_book
		puts "#{@title} has #{@nb_of_pages} pages"
	end
end

harry_potter = Book.new("Harry Potter", 700)
harry_potter.show_book