require './product.rb'
require 'csv'

class ProductCollection
	include Enumerable

	def initialize(path)
		@path = path
	end

	def each
		CSV.open(@path, headers: true).each do |row|
			yield Product.new(row["name"], row["price"].to_f)
		end
	end

end
