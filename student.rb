# frozen_string_literal: true

require './person'

# Class student
class Student < Person
  def initialize(name, age, classroom, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

peter = Student.new('Peter', 22, 'Math', parent_permission: false)
puts peter.inspect
puts peter.play_hooky
puts peter.can_use_services?
