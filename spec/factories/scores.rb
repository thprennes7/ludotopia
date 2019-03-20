FactoryBot.define do
  factory :score do
    game {Game.last}
    user {User.last}
    victory {1}
  end
end
