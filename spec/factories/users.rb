FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    username   { Faker::IDNumber.valid_south_african_id_number }
    email      { Faker::Internet.email }
    password   {"azerty"}
    status_id  {1}
  end
end
