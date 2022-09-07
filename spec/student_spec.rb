require_relative 'spec_helper'

describe Student do
  let(:student) { Student.new(18, 'Blossom', parent_permission: true) }

  describe '#new' do
    it 'takes three parameters and returns a Student object' do
      expect(student).to be_an_instance_of(Student)
    end
  end

  describe '#age' do
    it 'returns the correct age' do
      expect(student.age).to eql 18
    end
  end

  describe '#name' do
    it 'returns the correct name' do
      expect(student.name).to eql 'Blossom'
    end
  end

  describe '#parent_permission' do
    it 'return true' do
      expect(student.parent_permission).to equal true
    end

    it 'not return true' do
      expect(student.parent_permission).to_not eql false
    end
  end

  describe '#play_hooky' do
    it 'returns the correct string' do
      expect(student.play_hooky).to eql("¯\(ツ)/¯")
    end
  end
end
