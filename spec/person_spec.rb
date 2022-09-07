require_relative 'spec_helper'

describe Person do
  let(:person) { Person.new('age', 'name') }

  describe '#new' do
    it 'takes three parameters and returns a Person object' do
      expect(person).to be_an_instance_of(Person)
    end
  end

  describe '#age' do
    it 'returns the correct age' do
      expect(person.age).to eql 'age'
    end
  end

  describe '#name' do
    it 'returns the correct name' do
      expect(person.name).to eql 'name'
    end
  end

  describe '#rentals' do
    it 'has rentals' do
      expect(person.rentals).to eql []
    end
  end

  describe '#parent_permission' do
    it 'has parent permission' do
      expect(person.parent_permission).to eql true
    end
  end

  describe '#id' do
    it 'has an id' do
      expect(person.id).to be_an_instance_of Integer
    end
  end

  describe '#correct_name' do
    it 'has a correct name' do
      expect(person.correct_name).to eql 'name'
    end
  end
end
