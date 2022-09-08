require_relative 'spec_helper'

describe CapitalizeDecorator do
  let(:person) { Person.new(28, 'pokemon') }
  let(:capitalize) { CapitalizeDecorator.new(person) }

  describe '#capitalize' do
    it 'returns an instance of the Capitalize decor' do
      expect(capitalize).to be_an_instance_of(CapitalizeDecorator)
    end
  end

  describe '#capitalize method' do
    it 'returns the first alphabet in capital letter' do
      expect(capitalize.correct_name).to eql 'Pokemon'
      expect(capitalize.correct_name).to_not eql 'pokemon'
    end
  end
end
