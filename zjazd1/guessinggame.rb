toGuess = rand(100)
puts "Sprobuj zgadnąć"

loop do
	ans = gets.to_i

	if ans > toGuess 
		puts "mniej"

	elsif ans < toGuess
		puts "wiecej"

	else
		puts "wygrales!"
		break
	end
end