class Admin::GamesController < AdminsController
  before_action :set_game, except: [:index]
  respond_to :js, :html, :json


  def index
    @games = Game.paginate(page: params[:page], per_page: 10).order('created_at DESC')
    respond_with(@articles)
  end

  def show

  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def article_params
    params.require(:game).permit(:title, :description, :link)
  end
end
