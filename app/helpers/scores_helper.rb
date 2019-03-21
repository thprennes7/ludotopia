module ScoresHelper

  def find_scores(score)
    scores_list = Array.new
    score.each do |score|
      scores_list.each_with_index do |list, index|
        indice = 0
        if list[:game] == score.game && list[:player] == score.user
          if score.victory == true
            scores_list[index][:win] += 1
          end
          indice = 1
        end
        if indice == 0 && score.victory == true
          scores_list << {game: score.game, player: score.user}
        end
      end
    end
    return scores_list
  end

end
