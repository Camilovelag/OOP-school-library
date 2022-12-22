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
    menu
    option = gets.chomp.to_i
    case option
    when 1
      list_books
    when 2
      list_people
    when 3
      create_person
    when 4
      create_book
    when 5
      create_rental
    when 6
      list_rentals_by_person_id
    when 7
      puts 'Thank you for using this app!'
      return
    else
      puts 'That is not a valid option'
    end
  end

  def menu
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
  # def list_people

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
      return
    end
    
    @people.push(person)
    puts 'Person created successfully'
    puts ''
    run
  end
  
  def create_student
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    permission = gets.chomp.downcase == 'y'
    person = Student.new(name, age, parent_permission: permission)
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    person = Teacher.new(name, age, specialization)
  end


  # def permission_validation(permission)
  #   case permission
  #   when 'y'
  #     permission = true
  #   when 'n'
  #     permission = false
  #   else
  #     puts 'That is not a valid input'


  # def create_book
  # def create_rental
  # def list_rentals_by_person_id

  private :create_student, :create_teacher
end