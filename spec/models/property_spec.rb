require 'rails_helper'
RSpec.configure do |config|
  config.fuubar_progress_bar_options = { :format => 'Client model test <%B> %p%% %a' }
end

RSpec.describe Property, :type => :model do
  context 'validation tests' do
  let(:property) { build(:property) }

    it 'is saved if all fields are present' do
      expect(property.save).to eq(true)
    end

    it 'fails with no debt' do
      property.debt_taxation = nil
      expect(property.save).to eq(false)
    end

    it 'fails with no antiquity' do
      property.antiquity = nil
      expect(property.save).to eq(false)
    end
  end
end