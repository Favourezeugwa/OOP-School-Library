require_relative 'spec_helper'

describe BaseDecorator do
  let(:person1) { Person.new(18, 'blessedassurance') }
  let(:base) { BaseDecorator.new(person1) }
  let(:trim) { TrimmerDecorator.new(person1) }
  let(:capitalize) { CapitalizeDecorator.new(person1) }
  let(:capitalize_trim) { CapitalizeDecorator.new(trim) }

  describe '#initialize' do
    it 'returns a BaseDecor object' do
      expect(base).to be_an_instance_of(BaseDecorator)
    end
  end

  describe '#correct_name' do
    it 'returns the correct name' do
      expect(base.correct_name).to eql 'blessedassurance'
      expect(trim.correct_name).to eql 'blessedassu'
      expect(capitalize.correct_name).to eql 'Blessedassurance'
      expect(capitalize_trim.correct_name).to eql 'Blessedassu'
    end
  end
end
