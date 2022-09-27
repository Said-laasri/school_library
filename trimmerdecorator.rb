require_relative 'decorator'

class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name.strip! if @nameable.correct_name.length > 10
  end
end
