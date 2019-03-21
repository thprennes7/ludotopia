FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    username   { Faker::Name.male_first_name }
    email      { Faker::Internet.email }
    password   {"azerty"}
    status_id  {1}
  end
end
