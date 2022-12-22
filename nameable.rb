# class nameable
class Nameable < ApplicationRecord
  def correct_name
    raise 'NotImplementedError'
  end
end
