require_relative 'basedecor'

class TrimmerDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name[0..10]
  end
end