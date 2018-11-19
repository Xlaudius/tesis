require 'rails_helper'

RSpec.describe Client, :type => :model do
  let(:client_type) { ClientType.create(name: 'Particular') }
  subject { 
    described_class.new(
      name: 'Client Name',
      contact: 'Contact Name',
      number: 988887777,
      available: true,
      client_type_id: client_type.id,
      created_at: DateTime.now,
      updated_at: DateTime.now + 1.day
    )}
  
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a contact' do
    subject.contact = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a number' do
    subject.number = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a client type' do
    subject.client_type_id = nil
    expect(subject).to_not be_valid
  end

  it 'has a boolean type available field' do
    expect(subject.available).to be_in([true, false])
  end
end
