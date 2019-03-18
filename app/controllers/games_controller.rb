class GamesController < ApplicationController
  before_action :set_game, except: [:index]
  respond_to :js, :html, :json


  def index
    @games = Game.paginate(page: params[:page], per_page: 10).order('created_at DESC')
    respond_with(@articles)
  end

  def show

  end

  def create
    @game = Game.new(game_params)
    flash[:notice] = "Création de la partie." if @game.save
    respond_with(@game)
  end

  def update
    flash[:notice] = "Partie mise à jour." if @game.update_attributes(game_params)
    respond_with(@game)
  end

  def destroy
    flash[:notice] = "Partie supprimée" if @game.destroy
    respond_with(@game)
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title, :description, :link)
  end
end
