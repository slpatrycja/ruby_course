super_users = [{ :name => 'Janek', :role => 'admin'}, 
	{ :name => 'Rysiek', :role => 'moderator'},
	 { :name => 'Tomek', :role => 'admin'},
	  { :name => 'Stanisław', :role => 'moderator'},
 { :name => 'Beata', :role => 'stand_user'}]


 grouped = super_users.group_by { |user| user[:role] }.transform_values { |role_people| role_people.map { |person| person[:name] } }

 puts grouped