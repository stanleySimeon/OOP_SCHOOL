require_relative 'nameable'
# Create decorator class called Decorator that inherits from Nameable.
class Decorator < Nameable
  attr_accessor :nameable

  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
