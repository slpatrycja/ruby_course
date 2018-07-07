puts "Wpisz tekst krotszy niz trzy znaki"

string = ''
loop do 

	string = gets.chomp
	break if string.length < 3
	puts "sprobuj ponownie"	

end

puts "Dlugosc Twojego teskstu wynosi #{string.length}"
	
	
