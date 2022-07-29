# rubocop:disable Metrics/MethodLength, Lint/MissingCopEnableDirective
# rubocop:disable Metrics/CyclomaticComplexity
require_relative 'book'
require_relative 'person'
require_relative 'students'
require_relative 'teacher'
require_relative 'rental'

class App
  def initialize
    @books = []
    @people = []
    @rental = []
  end

  # Create menu that allows to do his choice
  def menu_showing
    puts "\n"
    puts 'Press 1 to show the list of books'
    puts 'Press 2 to show the list of people'
    puts 'Press 3 to add a person'
    puts 'Press 4 to add a book'
    puts 'Press 5 to add a rental'
    puts 'Press 6 to show the list of rentals'
    puts 'Press 7 to quit'
    puts "\n*********************************************************\n"
    print 'Enter your choice: '
    gets.chomp.to_i
  end

  # Create actions for each menu choice
  def menu_choice(action = menu_showing)
    case action
    when 1
      show_books
    when 2
      show_people
    when 3
      add_person
    when 4
      add_book
    when 5
      add_rental
    when 6
      show_rentals
    when 7
      print "\n________________________________________\n"
      puts "\n[ Thanks for using SchoolApp, Goodbye! ]"
      print "\________________________________________\n\n"
      exit
    else
      puts "\nWrong choice! plese try again\n\n"
      menu_choice
    end
  end

  # Create a method that shows the list of books
  def show_books
    @books.each do |book, i|
      puts "#{i}Id: #{book.id}\nTitle: #{book.title}\nAuthor: #{book.author}"
    end
    puts "\n\n"
  end

  # Create a method that shows the list of people
  def show_people
    @people.each do |person, i|
      puts "\n#{i}_____[#{person.class.name}]_____\nId: #{person.id}\nName: #{person.name} \nAge: #{person.age}\n\n"
    end
    "\n\n"
  end

  # Create a method that adds a student
  def add_student
    print 'Enter the age of the student: '
    age = gets.chomp.to_i
    print 'Enter the name of the student: '
    name = gets.chomp
    print 'The student has a parent permission? (y/n): '
    parent_permission = gets.chomp.to_s
    case parent_permission
    when 'y'
      true
    when 'n'
      false
    else
      puts "\nWrong choice! Please try again.\n\n"
      menu_choice
      "\n\n"
    end
    @people << Student.new(age, name, parent_permission)
    puts "\nStudent was successfully added!\n\n"
  end

  # Create a method that adds a teacher
  def add_teacher
    print 'Enter the age of the teacher: '
    age = gets.chomp.to_i
    print 'Enter the name of the teacher: '
    name = gets.chomp
    print 'Enter the specialization of the teacher: '
    specialization = gets.chomp
    @people << Teacher.new(age, name, specialization)
    puts "\nThe teacher was added successfully!\n\n"
  end

  # Create a method that select the type of person to add.
  def add_person
    print "\nIf you want to add a teacher, press 1. If you want to add a student, press 2: "
    choice = gets.chomp.to_i
    case choice
    when 1
      add_student
    when 2
      add_teacher
    else
      puts "\nWrong choice!\n\n"
    end
    system('clear')
    menu_choice
  end

  # Create a method that adds a book
  def add_book
    print 'Enter the title of the book: '
    title = gets.chomp
    print 'Enter the author of the book: '
    author = gets.chomp
    @books << Book.new(title, author)
    print "\nThe book was added successfully!\n"
    menu_choice
  end

  # Create a method that adds a rental
  def add_rental
    print "\nSelect a book from the following list by number: \n"
    show_books
    print 'Book Id: '
    book_id = gets.chomp
    print "\nSelect a person from the following list by number: \n"
    show_people
    print 'Person Id: '
    person_id = gets.chomp
    print "\nEnter the rental date format (yyyy/mm/dd): "
    rental_date = gets.chomp
    @rentals << Rental.new(@books[book_id.to_i], @people[person_id.to_i], rental_date)
    puts 'Rental added successfully'
  end

  # show the list of rentals
  def show_rentals
    persons = nil
    print "\nID of person: "
    person_id = gets.chomp
    @people.each do |x|
      persons = x if x.id == person_id.to_i
    end
    persons.rental.each do |x|
      puts x.date
    end
    puts "\n"
    menu_choice
  end
end
