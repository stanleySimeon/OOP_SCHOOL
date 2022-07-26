# Create a class teacher that inherits from person
require './person'

class Teacher < Person
  # Create a Constructor extends the parent's constructor by adding @specialization and a parameter for it.
  attr_accessor :specialization

  def initialize(age, name = 'Unknown', specialization)
    super(age, name)
    @specialization = specialization
  end

  # add override named "can_use_services?" and set it to always returns true.
  def can_use_services?
    true
  end
end
