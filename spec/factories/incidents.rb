FactoryBot.define do
  factory :incident do
    title { Faker::Company.buzzword }
    description { Faker::Lorem.paragraph }
    impact { ["major", "medium", "minor"].sample }
    date_occured { Faker::Date.between(from: '2021-09-01', to: '2021-09-30') }
  end
end
