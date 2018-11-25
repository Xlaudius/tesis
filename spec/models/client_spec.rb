require 'rails_helper'
RSpec.configure do |config|
  config.fuubar_progress_bar_options = { :format => 'Client model test <%B> %p%% %a' }
end

RSpec.describe Client, :type => :model do
  context 'validation tests' do
    let(:client_type) { build(:client_type) }
    let(:client) { build(:client) }
    
    it 'is not valid without a name' do
      client.name = nil
      expect(client.save).to eq(false)
    end
  
    it 'is not valid without a contact' do
      client.contact = nil
      expect(client.save).to eq(false)
    end
  
    it 'is not valid without a number' do
      client.number = nil
      expect(client.save).to eq(false)
    end
  
    it 'is not valid without a client type' do
      client.client_type_id = nil
      expect(client.save).to eq(false)
    end
  
    it 'has a boolean type available field' do
      expect(client.available).to be_in([true, false])
    end
  end
end
