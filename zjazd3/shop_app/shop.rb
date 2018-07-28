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