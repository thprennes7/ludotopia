class HomeController < ApplicationController
  def index
    @banners = Banner.all.sort.reverse
    @games = Game.all.sort.reverse
    @articles = Article.all.sort.reverse
  end
end
