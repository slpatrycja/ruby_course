# content = File.read('/etc/hosts')
# puts content

# file = File.open('/etc/hosts')

# file.each do |line|
# 	next if line[0] == "#"
# 	puts line
# end
# file.close


#data = File.open("data2.txt", "w+") { |file| file.puts 42}

	file = File.open("logs.txt", "a+") { |file| file.puts Time.now.strftime("%m/%d/%Y, %T") }


