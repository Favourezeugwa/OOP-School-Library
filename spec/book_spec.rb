require_relative 'spec_helper'

describe Book do
  let (:book ) { Book.new "title", "author" }

  describe '#new' do
    it 'takes two parameters and returns a Book object' do
      expect(book).to be_an_instance_of(Book)
    end
  end

  describe "#title" do
    it "returns the correct title" do
      expect(book.title).to eq "title"
    end
  end

  describe "#author" do
    it "returns the correct author" do
      expect(book.author).to eq "author"
    end
  end

  describe "#rentals" do
    it "has rentals" do
      expect(book.rentals).to eq []
    end
  end
end
