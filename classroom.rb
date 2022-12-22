# class classroom
class Classroom < ApplicationRecord
  has_many :students
  attr_accessor :label
  def initialize(label)
    @label = label
  end
end