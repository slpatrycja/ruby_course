require './products_importer'
require 'csv'

class CSVProductsImporter < ProductsImporter
	def run
		CSV.open(@path, headers: true).each do |row|
			@shop.add_product(product(row), row["quantity"].to_i)				
		end
	end

	private

	def product(row)
		Product.new(row["name"], row["price"].to_f)
	end

end