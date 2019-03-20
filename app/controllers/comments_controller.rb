class CommentsController < ApplicationController
  respond_to :js, :html, :json

  def index
    @comments = Comment.all.sort
  end

  def create
    @comment = Comment.create(comment_params)
      flash[:success] = "Commentaire ajouté" if @comment.save
      respond_with(@comment)
  end


  private

  def comment_params
    params.permit(:description, :user_id, :article_id)
  end
end
