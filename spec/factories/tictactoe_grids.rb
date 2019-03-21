FactoryBot.define do
  factory :tictactoe_grid do
  	tictactoe_id { Tictactoe.last.id }
    a1 {"x"}
    a2 {"o"}
    a3 {"x"}
    a4 {"x"}
    a5 {"o"}
    a6 {"x"}
    a7 {"o"}
    a8 {"x"}
    a9 {"o"}
    player {1} 
  end
end
