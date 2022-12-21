# frozen_string_literal: true

require './person'

# Class teacher
class Teacher < Person
  def initialize(name, age, specialization, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
