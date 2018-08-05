require './fetcher.rb'
require './CSVReportCreator'
require './mailer.rb'

class Reporter

	def initialize(mail, language, isofficial)
		@mail = mail
		@language = language
		@isofficial = isofficial
	end


	def call
		create_report
		send_report
		delete_report
	end

	private 

	def create_report
		CSVReportCreator.new(data, report_path).run
	end

	def send_report
		Mailer.new(@mail, report_path).send
	end

	def delete_report
		File.delete(report_path)
	end

	def report_path
		'report.csv'
	end

	def data
		Fetcher.new(@language, @isofficial).call
	end

end