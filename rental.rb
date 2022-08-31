class Rental
  attr_accessor :date
  attr_reader :book

  def initialize(date)
    @date = date
  end
end
