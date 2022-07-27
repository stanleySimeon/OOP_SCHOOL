# frozen_string_literal: true

require_relative 'Decorator'
# Create a class called CapitalizeDecorator that inherits from Decorator.
class CapitalizeDecorator < Decorator
  # Implementation of the method correct_name that capitalizes the output of @nameable.correct_name
  def correct_name
    @nameable.correct_name.capitalize
  end
end
