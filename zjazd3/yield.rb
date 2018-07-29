#!/usr/bin/env ruby
require 'pry'

def range(from, to)
	while from <= to
		yield from
		from += 1
	end
end

# range(0,10) { |e| puts e**2 }

def writer
	result = yield
	puts "He says #{result}"
end

# writer { "hoho "}

def map(array)
	new_array = []
	binding.pry
	array.each do |e|
		new_array.push(yield e)
	end
	new_array
end

print map([1,2,3]) { |e| e**3 }