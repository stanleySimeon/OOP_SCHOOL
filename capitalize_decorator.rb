require_relative 'decorator'
# Create a class CapitalizeDecorator inherit from Decorator
class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
