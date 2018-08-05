require 'pg'

class DbClient
	
	def initialize
		@conn = PG.connect( dbname: 'patrycja' )
	end

	def result(query)
		array = []
		@conn.exec( query ) do |result|
			result.each do |row|
				array << row
			end
		end
		array
	end

end