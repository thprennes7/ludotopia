FactoryBot.define do
  factory :tictactoe_user do
    user_id { User.last.id }
    tictactoe_id { Tictactoe.last.id}
    player { 1 }
  end
end
