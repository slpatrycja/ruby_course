# number = gets.to_i


# begin
# 	puts 10/number
# rescue
# 	puts 'Nie dziel przez zero'
# end

def divide(dividend, divisor)
	dividend/divisor
rescue ZeroDivisionError
	Float::INFINITY
rescue TypeError
	"podales zly typ"

end

puts divide(3,"e")