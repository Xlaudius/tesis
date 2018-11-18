require 'rails_helper'

RSpec.describe Assessment, type: :model do
  describe "A basic assessment" do
    it "requires state_id to be set" do
      expect(Assessment.new(state_id: 1)).to be_valid
    end 
  end
end