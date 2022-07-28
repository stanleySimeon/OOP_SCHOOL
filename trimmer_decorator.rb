require_relative 'Decorator'

# Create a class called TrimmerDecorator that inherits from Decorator.
class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name[0..9]
    "#{@nameable.correct_name[0..9]}..." if @nameable.correct_name.length > 10
    puts "TrimmerDecorator: #{@nameable.correct_name}"
  end
end
