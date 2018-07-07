admins = ["Jan", "Anna", "Łukasz", "Piotr"]

name = gets.chomp

if admins.include?(name)
	puts "Sekcja dla admina"
else 
	puts "Brak dostepu"
end