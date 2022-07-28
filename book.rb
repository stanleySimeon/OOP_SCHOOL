# Create a class called Book

class Book
  attr_accessor :title, :author
  attr_reader :rental

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def rental_info(person, date)
    Rental.new(person, date, self)
  end
end
