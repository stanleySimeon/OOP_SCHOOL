require_relative 'nameable'
# Create decorator class called Decorator that inherits from Nameable.
class Decorator < Nameable
  attr_accessor :nameable

  super initialize(nameable)
  @nameable = nameable
  def correct_name
    @nameable.correct_name
  end
end
