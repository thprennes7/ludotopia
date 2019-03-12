module ScoresHelper

  def find_scores(game)
    Score.where(game_id: game.id).sort.reverse
  end

end
