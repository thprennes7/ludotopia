class ScoresController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :set_score, except: [:index]
  respond_to :js, :html, :json


  def index
    @scores = Score.all.sort.reverse
    @games = Game.all
  end

  def show

  end

  def create
    @score = Score.new(score_params)
    flash[:notice] = "Création de la partie."
    respond_with(@score)
  end

  def update
    flash[:notice] = "Score mis à jour"
    respond_with(@score)
  end

  private

  def set_score
    @score = Score.find(params[:id])
  end

  def article_params
    params.require(:score).permit(:user_id, :game_id, :victory)
  end
end
