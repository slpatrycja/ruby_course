require "./query_builder.rb"
require "./db_client.rb"

class Fetcher
	def initialize(language, isofficial)
		@language = language
		@isofficial = isofficial
	end

	def call
		data_from_db
	end 

	def query
		QueryBuilder.new(@language, @isofficial).call
	end

	def data_from_db
		DbClient.new.result(query)
	end
end
