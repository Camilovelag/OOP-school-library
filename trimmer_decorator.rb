require './decorator'

# class trimmer_decorator
class TrimmerDecorator < Decorator
  def correct_name
    super()
    @nameable.length > 10 ? @nameable[0..9] : @nameable
  end
end
