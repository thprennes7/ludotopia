class HomeController < ApplicationController
  def index
    if request.original_url.index('theme')
      if cookies[:theme].to_i == 1
        cookies.permanent[:theme] = 0
      else
        cookies.permanent[:theme] = 1
      end
      redirect_to root_path
    end
    @banners = Banner.all.sort.reverse
    @games = Game.all.sort.reverse
    @articles = Article.all.sort.reverse
  end
end
