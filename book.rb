# class book
class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def rent(date, person)
    return if @rentals[@rentals.length - 1].book == self

    Rental.new(date, self, person)
  end
end
