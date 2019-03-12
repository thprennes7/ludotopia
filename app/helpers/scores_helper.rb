module ScoresHelper

  def find_scores(game)
    Scores.where(game_id: game.id).sort.reverse
  end

end
