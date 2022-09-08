require_relative 'spec_helper'

describe TrimmerDecorator do
  let(:person) { Person.new(15, 'blessedassurance') }
  let(:trimmer) { TrimmerDecorator.new(person) }

  describe '#trimmer' do
    it 'returns an instance of the trimmer decorator' do
      expect(trimmer).to be_an_instance_of(TrimmerDecorator)
    end
  end

  describe '#trimmer method' do
    it 'returns trimmed nameable to an index between 0..10' do
      expect(trimmer.correct_name).to eql 'blessedassu'
      expect(trimmer.correct_name).to_not eql 'blessedassurance'
    end
  end
end
