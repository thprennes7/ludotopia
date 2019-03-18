class ImagesController < ApplicationController

  def create
    unless img_params[:article_id] == nil
      @article = Article.find(img_params[:article_id])
      flash[:notice] = "Image uploadée !" if @article.image.attach(img_params[:image])
    else
      @game = Game.find(img_params[:game_id])
      flash[:notice] = "Image uploadée !" if @game.image.attach(img_params[:image])
    end
    respond_to do |format|
      format.js
      format.html { redirect_to request.referer }
    end
  end

  private

  def img_params
    params.permit(:article_id, :game_id, :image, :id )
  end
end
