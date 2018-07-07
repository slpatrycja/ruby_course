super_users = [{ :name => 'Janek', :role => 'admin'}, { :name => 'Rysiek', :role => 'moderator'}]

user_name = gets.chomp


if super_users.any? {|super_user| super_user[:name] == user_name && super_user[:role] == 'admin'}
	puts "Sekcja dla admina"
else 
	puts "Brak dostepu"
end
