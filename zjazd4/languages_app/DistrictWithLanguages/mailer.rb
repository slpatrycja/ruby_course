require 'mail'
require 'net/http'

class Mailer

	def initialize(mail, path)
		@mail = mail
		@path = path
	end

	def send
		mailer_defaults
		mailer_deliver
	end

	def mailer_defaults

		options = { :address              => "smtp.gmail.com",
		            :port                 => 587,
		            :user_name            => 'rubymail038@gmail.com',
		            :password             => 'Ruby123!',
		            :authentication       => 'plain',
		            :enable_starttls_auto => true  }

		Mail.defaults do
		  delivery_method :smtp, options
		end

	end

	def mailer_deliver
		receiver = @mail
		file_path = @path

		Mail.deliver do
		  to receiver
		  from 'rubymail038@gmail.com'
		  subject 'CSV'
		  body 'Hola!'
		  add_file :filename => file_path, :content => File.read(file_path)
		end
	end

end