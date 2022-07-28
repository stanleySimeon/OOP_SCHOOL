require_relative 'nameable'
require_relative 'decorator'

# Create a class person

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super 0
    @id = Random.new.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # create getters and setters for @id, @name, and @age
  attr_accessor :name, :age
  attr_reader :id

  # Create public method named "can_use_services?"
  # that returns true if person is of age or if they have permission from parents.
  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  # Create a private method named "is_of_age?" that returns true if age is greater or equal to 18 and false otherwise
  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
