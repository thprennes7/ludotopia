FactoryBot.define do
  factory :donation do
    game {Game.last}
    user {User.last}
    stripe_custommer_id {"MyString"}
    amount {5}
  end
end
