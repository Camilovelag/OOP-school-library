require './student'

# class classroom
class Classroom
  attr_accessor :label
  attr_reader :student_list

  def initialize(label)
    @label = label
    @student_list = []
  end

  def add_student(student)
    @student_list.push(student)
    student.classrooms = self
  end
end
