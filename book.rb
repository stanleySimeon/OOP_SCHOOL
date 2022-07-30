# Create a class called Book

class Book
  attr_accessor :title, :author
  attr_reader :rental, :id

  def initialize(title, author)
    @id = Random.new.rand(1..100)
    @title = title
    @author = author
    @rental = []
  end

  def add_rental(person, date)
    Rental.new(person, date, self)
  end
end
