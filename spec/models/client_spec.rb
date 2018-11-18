require 'rails_helper'


RSpec.describe Client, type: :model do
  let(:ctype) { ClientType.create( id: 1, name: 'Banco' )}

  describe "A Client" do
    it "has minimum contact information" do
      expect( Client.new(name: 'Client Name', contact: 'Contact Name', number: 11111, available: true, client_type_id: ctype.id )).to be_valid
    end 

  end
end