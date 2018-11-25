FactoryBot.define do

  factory :client_type, class: ClientType do
    name { ['Particular', 'Banco'].sample }
  end
  
end