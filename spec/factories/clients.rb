FactoryBot.define do
  factory :client, class: Client do

    name { Faker::Zelda.character }
    contact { Faker::WorldOfWarcraft.hero }
    number { Faker::Number.number(8) }
    available { Faker::Boolean.boolean }
    
    #Associations
    client_type

  end
  
end