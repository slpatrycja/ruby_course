def always_seven
	puts "just kidding"
	8
end

def add(a,b)
	return a + b
end


def greet(username)
	puts "Hello there, #{username}!"
end


def myFunction(x)
	return 4*x - 10
end

def silnia(n)
	x = 1
	result = 1
	while(n>=x)
		result *= x
		x += 1
	end
	return result
end


def silnia2(n)
	result = 1
	n.times {|i| result *= i+1 }
	result
end

def silnia3(n)
	return 1 if n==0
	result = n*silnia3(n-1)

end

def silnia4(n)
	result = n == 0 ? 1 : n*silnia4(n-1)
end

puts silnia4(5)