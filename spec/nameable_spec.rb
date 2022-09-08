require_relative 'spec_helper'

describe Nameable do
  let(:nameable) { Nameable.new }

  describe '#initialize' do
    it 'returns a Nameable object' do
      expect(nameable).to be_an_instance_of(Nameable)
    end
  end

  describe '#correct_name' do
    it 'returns the correct name' do
      expect { nameable.correct_name }.to raise_error(NotImplementedError)
    end
  end
end