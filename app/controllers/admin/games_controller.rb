class Admin::GamesController < AdminsController
  layout "ajax_gets"
  before_action :set_game, except: [:index, :create, :new]
  respond_to :js, :html, :json


  def index
    @games = Game.all.order('created_at DESC')
    respond_with(@articles)
  end

  def show

  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title, :description, :link, :image)
  end
end
