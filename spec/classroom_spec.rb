require_relative 'spec_helper'

describe Classroom do
  let(:classroom) { Classroom.new('Psychology') }

  describe '#new' do
    it 'returns an instance of Classroom' do
      expect(classroom).to be_an_instance_of(Classroom)
    end
  end

  describe '#label' do
    it 'has a label called Psychology' do
      expect(classroom.label).to eq('Psychology')
    end
  end

  describe '#add_student' do
    it 'returns a new student' do
      classroom.add_student(Student.new(18, 'Blossom', parent_permission: true))
      classroom.add_student(Student.new(28, 'Sunshine', parent_permission: false))
      expect(classroom.students.size).to eql 2
    end
  end
end
