toGuess = 48
ans = 50
min = 0
max = 99

def find

	if ans > toGuess 
		max = max/2
		find
	elsif ans < toGuess
		min = min/2
		find
	else 
		puts "done"
		break
	end

end