class Admin::GamesController < AdminsController
  before_action :set_game
  respond_to :js, :html, :json


  def index
    @games = Game.all.sort.reverse
  end

  def show

  end

  def create
    @game = Game.new(game_params)
    flash[:notice] = "Création de la partie."
    respond_with(@game)
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def article_params
    params.require(:game).permit(:title, :description, :link)
  end
end
