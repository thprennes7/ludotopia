class Admin::ScoresController < AdminsController
  layout "ajax_gets"
  before_action :set_score, except: [:index]
  respond_to :js, :html, :json


  def index
    @scores = Score.all.sort.reverse
    @games = Game.all
  end

  def show

  end

  private

  def set_score
    @score = Score.find(params[:id])
  end

  def article_params
    params.require(:score).permit(:user_id, :game_id, :victory)
  end
end
