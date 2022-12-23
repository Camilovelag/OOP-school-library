require './student'
require './teacher'

# class app
class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def run
    menu_options = {
      # '1' => method(:list_books),
      '2' => method(:list_people),
      '3' => method(:create_person),
      '4' => method(:create_book)
      # '5' => method(:create_rental),
      # '6' => method(:list_rentals_by_person_id)
    }

    menu
    option = gets.chomp.to_i
    case option
    when 1..6
      menu_options[option.to_s].call
    when 7
      puts 'Thank you for using this app!'
    else
      puts 'That is not a valid option'
      run
    end
  end

  def menu
    puts ''
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  # def list_books
  def list_people
    @people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    option = gets.chomp.to_i
    case option
    when 1
      person = create_student
    when 2
      person = create_teacher
    else
      puts 'That is not a valid input'
      run
    end
    @people.push(person)
    puts 'Person created successfully'
    run
  end

  def create_student
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    permission = gets.chomp.downcase == 'y'
    Student.new(name, age, parent_permission: permission)
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    Teacher.new(name, age, specialization)
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    puts 'Book created successfully'
    run
  end
  # def create_rental
  # def list_rentals_by_person_id

  private :create_student, :create_teacher
end
