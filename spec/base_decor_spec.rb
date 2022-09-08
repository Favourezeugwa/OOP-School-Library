require_relative 'spec_helper'

describe BaseDecorator do
  let(:base1) { BaseDecorator.new('Favour') }
  let(:nameable) { Nameable.new }

  describe '#initialize' do
    it 'returns a BaseDecor object' do
      expect(base1).to be_an_instance_of(BaseDecorator)
    end
  end

  # describe '#correct_name' do
  #   it 'returns the correct name' do
  #     expect(base1.nameable.correct_name).to eql 'Favour'
  #   end
  # end
end
