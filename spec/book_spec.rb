require_relative 'spec_helper'

describe Book do
  let(:book) { Book.new 'Woman of Valor', 'Marylnn Chadwick' }

  describe '#new' do
    it 'takes two parameters and returns a Book object' do
      expect(book).to be_an_instance_of(Book)
    end
  end

  describe '#title' do
    it 'returns the correct title' do
      expect(book.title).to eql 'Woman of Valor'
    end
  end

  describe '#author' do
    it 'returns the correct author' do
      expect(book.author).to eql 'Marylnn Chadwick'
    end
  end

  describe '#rentals' do
    it 'has rentals' do
      expect(book.rentals).to eql []
    end
  end
end
