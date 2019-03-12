class Admin::ArticlesController < AdminsController
  before_action :set_article, except: [:index]
  respond_to :js, :html, :json


  def index
    @articles = Article.all.sort.reverse
  end

  def update
    flash[:notice] = "Article mis à jour"
    respond_with(@article)
  end

  def show

  end

  def create
    @article = Article.new(article_params)
    flash[:notice] = "Article créé !"
    respond_with(@article)
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description, :article_imgs)
  end
end
