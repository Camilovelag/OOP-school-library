require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(name, age, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = nil
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def belongs_to(classroom)
    return if @classroom == classroom

    @classroom = classroom
    return if classroom.student_list.include? self

    classroom.student_list.push(self)
  end
end
