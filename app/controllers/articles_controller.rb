class ArticlesController < ApplicationController

  def create
    @article = Article.new(title: params[:title], description: params[:description])
    if @article.save
      redirect_to root_path
    end
  end
end
