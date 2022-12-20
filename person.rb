# frozen_string_literal: true

# class Person
class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private :of_age?
end

# mat = Person.new(12, 'Mat', parent_permission: false)
# puts mat.inspect
# puts mat.can_use_services?
# puts mat.of_age?
