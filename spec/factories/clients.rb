FactoryBot.define do
  # factory :client do
  #   name 'John Doe'
  #   contact 'Jane Doe'
  #   number 988887777
  #   available true
  #   client_type_id 1
  # end

  factory :client, class: Client do
    name { Faker::Zelda.character }
    contact { Faker::WorldOfWarcraft.hero }
    number { Faker::Number.number(8) }
    available { Faker::Boolean.boolean }
    client_type_id { [1, 2].sample }
  end
end