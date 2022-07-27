require_relative 'Nameable'
# Create decorator class called Decorator that inherits from Nameable.
class Decorator < Nameable
    def initialize(nameable)
        @nameable = nameable
    end
# Implementation of the correct_name method that returns the result of the correct_name method of the @nameable.
    def correct_name
        @nameable.correct_name
    end
end