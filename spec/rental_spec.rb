require_relative 'spec_helper'

describe Rental do
  let(:book) { Book.new('The Higher life', 'Pastor Chris') }
  let(:person) { Person.new(45, 'Madison') }
  let(:rental) { Rental.new('2022-09-07', book, person) }

  describe '#new' do
    it 'takes three parameters and returns a Rental object' do
      expect(rental).to be_an_instance_of(Rental)
    end
  end

  describe '#rentals' do
    it 'check for rental history' do
      expect(rental.date).to eql '2022-09-07'
      expect(rental.book.title).to eql 'The Higher life'
      expect(rental.person.name).to eql 'Madison'
    end
  end
end
