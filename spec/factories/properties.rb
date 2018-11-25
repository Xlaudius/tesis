FactoryBot.define do
  factory :property, class: Property do

    debt_taxation { Faker::Number.number(8) }
    antiquity { Faker::Number.number(2) }
    assessment_id { Faker::Number.number(4) }
    expropriation { Faker::Boolean.boolean }
    sill { Faker::Boolean.boolean }
    facilities { Faker::Boolean.boolean }

  end
end