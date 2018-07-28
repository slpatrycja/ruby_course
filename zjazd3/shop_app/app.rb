require './shop.rb'
require './client.rb'
require './product.rb'
require './csv_importer.rb'
require './json_importer.rb'
require './json_api_importer.rb'

shop = Shop.new('Alma')

products_importer = CSVProductsImporter.new(shop,"products.csv")
products_importer.run

json_importer = JSONProductsImporter.new(shop, "products.json")
json_importer.run

json_api_importer = JSONApiProductsImporter.new(shop, "https://a.uguu.se/rBK67A6JqhBs_products.json")
json_api_importer.run

client = Client.new('Marek',20)
client.list = ['szynka', 'jogurt', 'czekolada', 'czekolada']
client.perform_shopping(shop)

puts "***********BAG***********"
puts client.bag
puts "***********LEFT IN STORE*************"
puts shop.products