class User
	attr_reader :name

	initialize(name)
		@name = name
	end

	def welcome(user)
		puts "Welcome #{user.name}"
		hello(self)
	end
	
	protected

	def hello(user)
		puts "Hello, #{user.name}"
	end
end

