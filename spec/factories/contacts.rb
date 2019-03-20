FactoryBot.define do
  factory :contact do
    me {User.last}
    friend {User.first}
  end
end
