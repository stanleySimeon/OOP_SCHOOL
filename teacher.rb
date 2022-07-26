#Create a class teacher that inherits from person
require_relative 'person'

class Teacher < Person
    # Create a Constructor extends parent's constructor by adding @specialization and a parameter for it.
    def initialize(name, age, parent_permission = true, specialization)
        super(name, age, parent_permission)
        @specialization = specialization
        #Override can_use_services? to always returns true.
        def can_use_services?
            true
        end
    end
end
