FactoryBot.define do
  factory :support do
    email { Faker::Internet.email }
    title { Faker::DcComics.title }
    description { Faker::Hacker.say_something_smart }
    last_name { Faker::Name.last_name }
  end
end
