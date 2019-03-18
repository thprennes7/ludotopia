class Admin::CommentsController < AdminsController
  before_action :set_comment, except: [:index, :new, :create]
  respond_to :js, :html, :json


  def index
    @article = Article.find(params[:article_id])
    @comments = Comment.all
  end

  def show

  end

  def destroy
    flash[:notice] = "Commentaire supprimé" if @comment.destroy
    respond_with(@comment)
  end

  private

  def set_article
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.permit(:user_id, :description, :article_id)
  end
end
