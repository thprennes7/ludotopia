class HomeController < ApplicationController
  def index
    if request.original_url.index('theme')
      if cookies[:theme].to_i == 1
        cookies.permanent[:theme] = 0
      else
        cookies.permanent[:theme] = 1
      end
      redirect_to request.referer
    end
    @banners = Banner.all.sort.reverse
    @games = Game.all.sort.reverse
    @articles = Article.all.sort.reverse
    @about = HomeTab.find_by(title: "about")
    @florian = HomeTab.find_by(title: "florian")
    @salome = HomeTab.find_by(title: "salome")
    @samir = HomeTab.find_by(title: "samir")
    @yann = HomeTab.find_by(title: "yann")
    @guillaume = HomeTab.find_by(title: "guillaume")
    @aurelien = HomeTab.find_by(title: "aurelien")
  end
end
