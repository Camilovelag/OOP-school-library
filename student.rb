require './person'

# Class student
class Student < Person
  belongs_to :classroom
  def initialize(name, age, classroom, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
# rubocop:disable all
    "¯\(ツ)/¯"
# rubocop:enable all
  end
end
