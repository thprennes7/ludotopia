class ImagesController < ApplicationController

  def create
    @article = Article.find(article_img_params[:article_id])
    flash[:notice] = "Image uploadée !" if @article.image.attach(article_img_params[:image])
    respond_to do |format|
      format.js
      format.html { redirect_to request.referer }
    end
  end

  def destroy
    flash[:notice] = "Image supprimée" if @article.image.purge
    respond_to do |format|
      format.js
      format.html {redirect_to request.referer}
    end
  end

  private

  def article_img_params
    params.permit(:article_id, :image, :id )
  end
end
