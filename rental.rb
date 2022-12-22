# class rental
class Rental < ApplicationRecord
  attr_accessor :date
  def initialize(date)
    @date = date
  end
end