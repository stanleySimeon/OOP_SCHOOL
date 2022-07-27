# frozen_string_literal: true

require_relative 'Decorator'

# Create a class called TrimmerDecorator that inherits from Decorator.
class TrimmerDecorator < Decorator
  # This method make sure that the output of
  # @nameable.correct_name has a maximum of 10 characters.
  # and trim the word if it is longer than 10 characters.
  def correct_name
    @nameable.correct_name[0..9]
    "#{@nameable.correct_name[0..9]}..." if @nameable.correct_name.length > 10
  end
end
