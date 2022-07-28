require_relative 'person'
class Student < Person
  # Create a Constructor extends the parent's constructor by adding @classroom and a parameter for it.
  def initialize(age, name = 'Unknown', parent_permission: true, classroom)
    super(age, name, parent_permission)
    @classroom = classroom
  end
  # Create a Method named "play_hooky" that returns "¯\(ツ)/¯".
  def play_hooky
    "¯\(ツ)/¯"
  end
end
student = Student.new
student.play_hooky
