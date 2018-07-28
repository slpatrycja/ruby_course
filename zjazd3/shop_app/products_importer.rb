require 'csv'
require './product.rb'
require './shop.rb'


class ProductsImporter

	def initialize(shop, path)
		@shop = shop
		@path = path
	end

	def run
		raise NoMethodError
	end
	
end