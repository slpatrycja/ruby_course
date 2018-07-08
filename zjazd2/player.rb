class Player
	include Comparable

	attr_reader :score, :name

	def initialize(score, name)
		@score = score
		@name = name
	end

	def <=>(other)
		if @name == 'Edward'
			1
		elsif other.name == 'Edward'
			-1
		else
			score <=> other.score
		end
	end

end

p1 = Player.new(10, 'Adam')
p2 = Player.new(20, 'Rysiek')
p3 = Player.new(8, 'Czesław')
p4 = Player.new(10, 'Edward')
 
puts p2 < p4