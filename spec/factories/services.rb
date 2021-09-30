FactoryBot.define do
  factory :service do
    name { Faker::Company.unique.buzzword }
    operational { true }
  end
end
