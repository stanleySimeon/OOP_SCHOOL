require_relative 'Nameable'
# Create decorator class called Decorator that inherits from Nameable.
class Decorator < Nameable
  super initialize(nameable)
  @nameable = nameable
  def correct_name
    @nameable.correct_name
  end
end

def correct_name
  @nameable.correct_name
end
