require 'rails_helper'

RSpec.describe ClientType, type: :model do
  describe "A Client Type" do
    it "has a name" do
      expect(ClientType.new(name: 'Aasd')).to be_valid
    end 
  end
end