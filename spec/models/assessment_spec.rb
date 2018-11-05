require 'rails_helper'

RSpec.describe Assessment, type: :model do
  describe "validations" do
    it "requires state_id to be set" do
      expect(subject).to exist
      expect(subject.errors[:state_id].value).to gt(1)&&lt(7)
end
