super_users = [
	{ :name => 'Janek', :role => 'admin'}, 
	{ :name => 'Rysiek', :role => 'moderator'}
]
def is_admin?(super_user)
	super_user[:role] == 'admin'
end

# puts is_admin?(super_users[0])

def is_moderator?(super_user)
	super_user[:role] == 'moderator'
end

def display_roles(super_user)
	print "#{super_user[:name]} is "
	if is_admin?(super_user)
		print 'administrator' 
	elsif is_moderator?(super_user)	
		print 'moderator'
	else
		print 'not super user'
	end

	print "\n"
end

def display_users_roles(users)
	users.each { |user| display_roles(user) }
end


#display_users_roles(super_users)

#users.detect
#users.select
#users.any?
#users.none?
#puts users.any? { |user| is_admin?(user) }



users_with_age = [
	{ :name => 'Janek', :age => 23 }, 
	{ :name => 'Rysiek', :age => 45}
]

puts users_with_age.sum(0) { |user| user[:age] }

# wynkonaj to i sprawdz czy zwraca true
#["a", "b", "c"].sum("") == "" + "a" + "b" + "c"

# i to
#[[1], [[2]], [3]].sum([]) == [] + [1] + [[2]] + [3]
#(1..100).to_a.sum //przedzial domkniety
#(1...100).to_a.sum // przedzial otwarty

ar = Array.new(10) { rand(100) }


