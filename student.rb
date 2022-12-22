require './person'

# Class student
class Student < Person
  attr_accessor :classroom

  def initialize(name, age, classroom, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def belongs_to(classroom)
    return if self.classroom == classroom

    @classroom = classroom
    return if classroom.student_list.include? self

    classroom.student_list.push(self)
  end
end
