require './json_importer'
require 'net/http'

class JSONApiProductsImporter < JSONProductsImporter

	private

	def json_products
		JSON.parse(Net::HTTP.get(URI(@path)))
	end

end