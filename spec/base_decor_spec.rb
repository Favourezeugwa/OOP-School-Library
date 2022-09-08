require_relative 'spec_helper'

describe BaseDecorator do
  let(:base1) { BaseDecorator.new('Favour') }

  describe '#initialize' do
    it 'returns a BaseDecor object' do
      expect(decor).to be_an_instance_of(BaseDecor)
    end
  end
end
