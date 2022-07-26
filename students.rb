# Create a class student that inherits from person
require_relative 'person'

class Student < Person
   # Create a Constructor extends parent's constructor by adding @classroom and a parameter for it.
    def initialize(name, age, parent_permission = true, classroom)
          super(name, age, parent_permission)
          @classroom = classroom
    end
    # Create a Method play_hooky that returns "¯\(ツ)/¯".
    def play_hooky
        "¯\(ツ)/¯"
    end
end