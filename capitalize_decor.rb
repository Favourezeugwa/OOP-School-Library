require_relative 'basedecor'

class CapitalizeDecor < BaseDecor
  def correct_name
    @nameable.correct_name.capitalize
  end
end
