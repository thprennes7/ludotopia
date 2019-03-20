class LikesController < ApplicationController
  respond_to :js, :html, :json

  def create
    @like = Like.create(like_params)
    @like.user = current_user
    flash[:success] = "Like ajouté" if @like.save
    respond_with(@like)
  end

  def destroy
    @current_like = Like.find(params[:id])
    @article = @current_like.article
    flash[:success] = "Le like a été supprimé !" if @current_like.destroy
    respond_with(@article)
  end
end

private

def like_params
  params.permit(:comment_id, :user_id, :article_id)
end
