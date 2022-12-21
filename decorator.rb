# frozen_string_literal: true

require './nameable'

# class decorator
class Decorator < Nameable
  def initialize(nameable)
    @nameable = nameable
    super()
  end

  def correct_name
    @nameable
  end
end
