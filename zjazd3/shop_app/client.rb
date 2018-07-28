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

			if @money >= product.price
				@money -= product.price
				@bag << product
			
			else
				shop.add_product(product)
				return false
			end
		end
		true
	end
end