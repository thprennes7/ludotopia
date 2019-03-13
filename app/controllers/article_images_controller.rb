class ArticleImagesController < ApplicationController
  before_action :article_img_params

  def create
    @article = Article.find(article_img_params[:article_id])
    flash[:notice] = "Image attachée !" if @article.article_images.attach(article_img_params[:article_images])
    respond_to do |format|
      format.js
      format.html {redirect_to request.referer}
    end
  end

  def destroy
    @image = article_image
    flash[:notice] = "Image supprimé" if @image.purge
    respond_to do |format|
      format.js
      format.html {redirect_to request.referer}
    end
  end

  private

  def article_img_params
    params.permit(:article_id, article_images: [])
  end
end
