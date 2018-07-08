class Product
	attr_accessor :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end

	def to_s
		"Name: #{@name}, Price: #{@price}"
	end

end


class Shop
	attr_accessor :name, :products
	def initialize(name)
		@name = name
		@products = []
	end

	def add_product(product, quantity=1)
		quantity.times { @products << product }
	end


	def take(product_name)
		taken_product_index = @products.index { |product| product.name == product_name }
		@products.delete_at(taken_product_index) if taken_product_index
	end
end

class Client
	attr_accessor :list
	attr_reader :money, :name, :bag

	def initialize(name, money)
		@name = name
		@money = money
		@bag = []
		@list = []
	end

	def perform_shopping(shop)
		while product_name = @list.pop
			product = shop.take(product_name)
			@bag << product
		end
		true
	end
end

shop = Shop.new('Alma')
shop.add_product(Product.new('bread', 2.5),3)
shop.add_product(Product.new('milk', 2),4)
# puts shop.products
# puts "*************"
# shop.take('bread')
# puts shop.products

client = Client.new('Marek',100)
client.list = ['bread', 'bread', 'milk','milk']
client.perform_shopping(shop)
puts client.bag
puts "***********"
puts shop.products