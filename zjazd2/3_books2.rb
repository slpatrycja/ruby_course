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

	  def title=(title)
	  	@title = title
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

# def book_exist?(books, title)
# 	books.any? { |book| book.title == title } 
# end
# puts book_exist?(books, 'vfvf')

# book = books[0]
# puts book
# book.title = "Inny"
# puts book

def add_additional_info_to_books(books)
	books.each { |book| book.title += ' (wiele stron)' if book.number_of_pages > 200 }
end

# books_add = add_additional_info_to_books(books)
# puts books_add

def long_books(books)
	books.select { |book| book.number_of_pages > 200 }.map { |book| book.title }
end

print long_books(books)