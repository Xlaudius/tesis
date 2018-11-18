require 'rails_helper'

RSpec.describe Client, type: :model do

  let(:client_type) { ClientType.first}
  let(:client) { Client.first }


  describe "A basic assessment" do

    it "has customer with basic information set" do
      expect( Client.new( \
        name: client.name, \
        contact: client.contact, \
        number: client.number, \
        available: client.available, \
        client_type_id: client_type.id \
      )).to be_valid
    end 

    it "has information about the customer type" do
      expect(ClientType.new( \
        name: client_type \
      )).to be_valid
    end 

  end
end