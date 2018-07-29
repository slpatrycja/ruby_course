require './product_collection'
require 'pry'

class ProductsReporter
  CSV_PATH = 'products.csv'.freeze

  def initialize(min_max_price)
    # @min_count, @max_count = min_max_count
    @min_price, @max_price = min_max_price
  end

  def call
    puts product_collection.select do |item|
      (@min_price..@max_price).cover?(item.price)
    end
  end

  private

  def product_
    collection
    ProductCollection.new(CSV_PATH)
  end
end
