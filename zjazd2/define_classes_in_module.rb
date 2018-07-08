class Dog
	def to_s
		"super dog"
	end
end


module Home
	class Dog
		def to_s
			"extra dog"
		end
	end
end

puts Dog.new
puts Home::Dog.new