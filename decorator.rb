require_relative 'Nameable'
# Create decorator class called Decorator that inherits from Nameable.
class Decorator < Nameable
  attr_accessor :nameable

  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
