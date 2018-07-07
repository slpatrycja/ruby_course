

def sum_array(array)
	array.sum - array.min - array.max
end

# puts sum_array([120,7,145,-10,-15])

def invert_array(array)
	array.each { |e| e*(-1) }
end

puts invert_array([1,2,3])











