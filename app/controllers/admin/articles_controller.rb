class Admin::ArticlesController < AdminsController
  before_action :set_article, except: [:index]
  respond_to :js, :html, :json


  def index
    @articles = Article.paginate(page: params[:page], per_page: 10).order('created_at DESC')
    respond_with(@articles)
  end

  def show

  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description, :article_images)
  end
end
