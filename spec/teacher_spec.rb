require_relative 'spec_helper'

describe Teacher do
  let(:teacher) { Teacher.new(35, 'Mrs Rowling', 'Literature') }

  describe '#new' do
    it 'takes three arguments and returns a Student object' do
      expect(teacher).to be_an_instance_of(Teacher)
    end
  end

  describe '#age' do
    it 'return the correct age' do
      expect(teacher.age).to eql 35
    end
  end

  describe '#name' do
    it 'returns the correct name' do
      expect(teacher.name).to eql 'Mrs Rowling'
    end
  end

  describe '#specialization' do
    it 'returns the correct specialization' do
      expect(teacher.specialization).to eql 'Literature'
    end
  end

  describe '#can_use_services?' do
    it 'returns true' do
      expect(teacher.can_use_services?).to eql true
    end
  end
end
