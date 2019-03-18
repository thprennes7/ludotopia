class ArticlesController < ApplicationController
  before_action :set_article, except: [:index, :create]
  respond_to :js, :html, :json


  def index
    @articles = Article.paginate(page: params[:page], per_page: 10).order('created_at DESC')
  end

  def update
    flash[:notice] = "Article mis à jour" if @article.update_attributes(article_params)
    respond_with(@article)
  end

  def show

  end

  def create
    @article = Article.new(article_params)
    flash[:notice] = "Article créé !" if @article.save
    respond_with(@article)
  end

  def destroy
    flash[:notice] = "Article supprimé" if @article.destroy
    respond_with(@article)
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.permit(:title, :description, :image, :id)
  end
end
