class Admin::ArticlesController < AdminsController
  layout "ajax_gets"
  before_action :set_article, except: [:index]
  respond_to :js, :html, :json


  def index
    @articles = Article.all.order('created_at DESC')
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
