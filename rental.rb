# Create a class Rental

class Rental
  attr_accessor :book, :person, :date

  def initialize(book, person, date)
    @book = book
    book.rental << self unless book.rental.include?(self)
    @person = person
    person.rental << self unless person.rental.include?(self)
    @date = date
  end
end
