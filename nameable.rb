#class nameable
class Nameable
  def correct_name
    raise 'NotImplementedError'
  end
end

name = Nameable.new
puts name.correct_name
