require 'csv'

class CSVReportCreator

	def initialize(district_rows, path)
		@district_rows = district_rows
		@path = path
	end

	def run
		CSV.open(@path, "w") do |csv|
		  csv << headers
		  @district_rows.each do |hash|
		  	csv << csv_row(hash)
			end
		end
	end

	private 

	def headers
		["district", "population"]
	end

	def csv_row(data_hash)
		[data_hash['district'], data_hash['sum']]
	end
end
