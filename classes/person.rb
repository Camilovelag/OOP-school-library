require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'
require './rental'

# class Person
class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def rent(date, book)
    return if @rentals.length.positive? && @rentals[@rentals.length - 1].person == self

    Rental.new(date, book, self)
  end

  private :of_age?
end
