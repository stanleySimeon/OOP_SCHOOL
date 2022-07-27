require_relative 'Nameable'
# Create a class person

class Person < Nameable
  def correct_name
    @name
  end

  super initialize(_id, name = 'Unknow', age, parent_permission: true)
  @id = Random.new.rand(1..100)
  @name = name
  @age = age
  @parent_permission = parent_permission
end

# create getters and setters for @id, @name, and @age
attr_accessor :name, :age
attr_reader :id

  # Create a private method named "is_of_age?" that returns true if age is greater or equal to 18 and false otherwise
  private

def of_age?
  @age >= 18
end

# Create public method named "can_use_services?"
# that returns true if person is of age or if they have permission from parents.
def can_use_services?
  is_of_age? || @parent_permission
end

person = Person.new
person.is_of_age?
person.can_use_services?
