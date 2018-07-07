class Book
	
	  def initialize(title, number_of_pages)
	    @title = title
	    @number_of_pages = number_of_pages
	  end

	  def to_s
	    "#{@title} has #{@number_of_pages} pages"
	  end

	  def title
	  	@title
	  end

	  def number_of_pages
	  	@number_of_pages
	  end
end

books = [
Book.new("Bolek i Lolek", 120),
Book.new("Pan Tadeusz", 300),
Book.new("W pustyni i w puszczy", 220)
]

def book_exist?(books, title)
	books.any? { |book| book.title == title } 
end
puts book_exist?(books, 'vfvf')