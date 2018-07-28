require './products_importer'
require 'json'

class JSONProductsImporter < ProductsImporter

	def run
		json_products["products"].each do |hash|
			@shop.add_product(product(hash), hash["quantity"].to_i)
		end
	end

	private

	def json_products
		JSON.parse(File.read(@path))
	end

	def product(hash)
		Product.new(hash["name"], hash["price"].to_f)
	end

end